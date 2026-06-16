// name : extmath.c 
// date : 2026-06-16 
// std  : C 23 standard 


//---------------------------------- include header files -------------------------------
#include "extmath.h"

int mod(int a, int b) {
    return a % b < 0 ? ((a % b) + b) % b : a % b;
}
