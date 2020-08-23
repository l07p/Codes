// file: main.cpp
#include "rect.h"
#include <iostream>
int main() { 
    Rect r(3.1, 4.05);
    std::cout << r.get_area() << std::endl; 
    std::cout << "something happends." << std::endl;
    system("pause");
    return 0;
}