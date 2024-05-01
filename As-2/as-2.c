const double PI = 3.14159265359;

double circle_area(double r) {
    return r * r * PI;
}

double circle_circumference(double r) {
    return 2 * r * PI;
}

double sphere_surface_area(double r) {
    return 4 * r * r * PI;
}

double sphere_volume(double r) {
    return (4.0 / 3.0) * r * r * r * PI;
}