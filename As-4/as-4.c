#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

#define DBL_INT_ADD(a,b,c) if (a > 0xffffffff - (c)) ++b; a += c;
#define ROTLEFT(a,b) (((a) << (b)) | ((a) >> (32-(b))))
#define ROTRIGHT(a,b) (((a) >> (b)) | ((a) << (32-(b))))

#define CH(x,y,z) (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x,y,z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x) (ROTRIGHT(x,2) ^ ROTRIGHT(x,13) ^ ROTRIGHT(x,22))
#define EP1(x) (ROTRIGHT(x,6) ^ ROTRIGHT(x,11) ^ ROTRIGHT(x,25))
#define SIG0(x) (ROTRIGHT(x,7) ^ ROTRIGHT(x,18) ^ ((x) >> 3))
#define SIG1(x) (ROTRIGHT(x,17) ^ ROTRIGHT(x,19) ^ ((x) >> 10))

typedef struct {
	unsigned char W[64];
	unsigned int W_len;
	unsigned int bitlen[2];
	unsigned int H[8];
} CTX;

const unsigned int k[64] = {
	0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
	0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
	0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
	0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
	0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
	0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
	0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
	0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

const unsigned int h0[8] = {
    0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a, 0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19
};

void SHA256Init(CTX *ctx){
	ctx->W_len = 0;
	ctx->bitlen[0] = 0;
	ctx->bitlen[1] = 0;
    for (size_t i = 0; i < 8; ++i) {
        ctx->H[i] = h0[i];
    }
}

void SHA256Transform(CTX *ctx, unsigned char W[]){
	unsigned int a, b, c, d, e, f, g, h, t1, t2, m[64];
    int i = 0, j = 0;
	for (; i < 16; ++i, j += 4) {
		m[i] = (W[j] << 24) | (W[j + 1] << 16) | (W[j + 2] << 8) | (W[j + 3]);
    }
	for (; i < 64; ++i) {
		m[i] = SIG1(m[i - 2]) + m[i - 7] + SIG0(m[i - 15]) + m[i - 16];
    }

	a = ctx->H[0];
	b = ctx->H[1];
	c = ctx->H[2];
	d = ctx->H[3];
	e = ctx->H[4];
	f = ctx->H[5];
	g = ctx->H[6];
	h = ctx->H[7];

	for (i = 0; i < 64; ++i) {
		t1 = h + EP1(e) + CH(e, f, g) + k[i] + m[i];
		t2 = EP0(a) + MAJ(a, b, c);
		h = g;
		g = f;
		f = e;
		e = d + t1;
		d = c;
		c = b;
		b = a;
		a = t1 + t2;
	}

	ctx->H[0] += a;
	ctx->H[1] += b;
	ctx->H[2] += c;
	ctx->H[3] += d;
	ctx->H[4] += e;
	ctx->H[5] += f;
	ctx->H[6] += g;
	ctx->H[7] += h;
}

void SHA256Update(CTX *ctx, unsigned char W[], unsigned int len){
	for (unsigned int i = 0; i < len; ++i) {
		ctx->W[ctx->W_len] = W[i];
		ctx->W_len++;
		if (ctx->W_len == 64) {
			SHA256Transform(ctx, ctx->W);
			DBL_INT_ADD(ctx->bitlen[0], ctx->bitlen[1], 512);
			ctx->W_len = 0;
		}
	}
}

void SHA256Final(CTX *ctx, unsigned char hash[]) {
	unsigned int i = ctx->W_len;

	if (ctx->W_len < 56) {
		ctx->W[i++] = 0x80;
		while (i < 56) {
			ctx->W[i++] = 0x00;
		}
	} else {
		ctx->W[i++] = 0x80;
		while (i < 64) {
			ctx->W[i++] = 0x00;
		}
		SHA256Transform(ctx, ctx->W);
		memset(ctx->W, 0, 56);
	}

	DBL_INT_ADD(ctx->bitlen[0], ctx->bitlen[1], ctx->W_len * 8);
	for (unsigned int x = 0; x < 4; ++x) {
		ctx->W[63 - x] = ctx->bitlen[0] >> (x * 8);
	}
	for (unsigned int x = 0; x < 4; ++x) {
		ctx->W[59 - x] = ctx->bitlen[1] >> (x * 8);
	}
	SHA256Transform(ctx, ctx->W);

	for (i = 0; i < 4; ++i) {
		for (unsigned int j = 0; j < 8; ++j) {
			unsigned int x = i + j * 4;
			hash[x] = (ctx->H[j] >> (24 - i * 8)) & 0x000000ff;
		}
	}
}

char* SHA256(char* W) {
	int strLen = strlen(W);
	CTX ctx;
	unsigned char hash[32];
	char* str = malloc(65);
	strcpy(str, "");

	SHA256Init(&ctx);
	SHA256Update(&ctx, W, strLen);
	SHA256Final(&ctx, hash);

	char s[3];
	for (int i = 0; i < 32; i++) {
		sprintf(s, "%02x", hash[i]);
		strcat(str, s);
	}

	return str;
}