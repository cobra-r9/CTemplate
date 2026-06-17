// name : extmath.c 
// date : 2026-06-16 
// std  : C 23 standard 


//---------------------------------- include header files -------------------------------
#include "extmath.h"

//---------------------------------- function definitions go here ----------------------- 
// Add a mathematical modulo function. 
int modulo(int a, int b) {
    return a % b < 0 ? ((a % b) + b) % b : a % b;
}

// Function for adding 2 2d vectors. 
Vec2D add2_vec2d(Vec2D vec1, Vec2D vec2) {
    return (Vec2D){ .i = vec1.i + vec2.i, .j = vec1.j + vec2.j };
}

