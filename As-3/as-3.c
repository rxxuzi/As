int partition(int* data, int l, int r) {
	int pivot = data[r];
	int temp;
	int i = l;

	for (int j = l; j < r; ++j) {
		if (data[j] <= pivot) {
			temp = data[j];
			data[j] = data[i];
			data[i] = temp;
			i++;
		}
	}

	data[r] = data[i];
	data[i] = pivot;

	return i;
}

void quick_sort(int* data, int left, int right) {
	if (left < right) {
		int q = partition(data, left, right);
		quick_sort(data, left, q - 1);
		quick_sort(data, q + 1, right);
	}
}