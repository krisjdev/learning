#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
//Complete the following function.


void calculate_the_maximum(int n, int k) {
  //Write your code here.

    int max_and = 0;
    int max_or = 0;
    int max_xor = 0;

    for (int i = 1; i <= n-1; i++) {
        for (int j = i+1; j <= n; j++) {

            int test_and = i & j;
            int test_or = i | j;
            int test_xor = i ^ j;

            if ((test_and < k) && test_and > max_and)
                max_and = test_and;

            if ((test_or < k) && test_or > max_or)
                max_or = test_or;

            if ((test_xor < k) && test_xor > max_xor)
                max_xor = test_xor;

        }
    }

    printf("%d\n%d\n%d\n", max_and, max_or, max_xor);

}

int main() {
    int n, k;
  
    scanf("%d %d", &n, &k);
    calculate_the_maximum(n, k);
 
    return 0;
}
