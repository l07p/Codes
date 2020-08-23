#ifndef RECT_H
#define RECT_H
struct Rect {
private:
  double side1_;
  double side2_;

public:
  Rect(double s1, double s2);
  double get_area();
};
#endif // RECT_H
