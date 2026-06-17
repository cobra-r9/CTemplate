// name : main.c 
// date : 2026-06-16 
// std  : C 23 standard 


//---------------------------------- include header files -------------------------------
#include <stdio.h> 
#include <stdlib.h> 
#include "extmath.h"

//--------------------------------------- main program ----------------------------------
int main(void) {

    // create a 2d vector. 
    Vec2D v1 = {10.0, 15.0 };
    Vec2D v2 = { -5.0, -10.0 };
    Vec2D v3 = add2_vec2d(v1, v2);

    printf("-2 mod 5 is : %d\n", modulo(-2, 5));
    printf("Vector v1 = %lfi + %lfj\n", v1.i, v1.j);
    printf("Vector v2 = %lfi + %lfj\n", v2.i, v2.j);
    printf("Vector v3 = v1 + v2 = %lfi + %lfj\n", v3.i, v3.j);
    
    
    return EXIT_SUCCESS;
}

