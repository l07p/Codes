// file: rect.cpp
#include "rect.h"

Rect::Rect(double s1, double s2) : side1_(s1), side2_(s2) {}

double Rect::get_area() { return side1_ * side2_; }
