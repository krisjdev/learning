#include <stdio.h>

// listing 2-2
// void swap(int a, int b) {
//     int t = a;
//     a = b;
//     b = t;
//     printf("swap: a = %d, b = %d\n", a, b);
// }

// listing 2-3
void swap(int *pa, int *pb) {
    int t = *pa;
    *pa = *pb;
    *pb = t;
    return;
}

int main(void) {
    int a = 21;
    int b = 17;

    // listing 2-2
    // swap(a, b);

    // listing 2-3
    swap(&a, &b);
    
    printf("main: a = %d, b = %d\n", a, b);
    return 0;
}