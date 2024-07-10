#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
	
    int n;
    scanf("%d", &n);
    //Complete the code to calculate the sum of the five digits on n.

    int sum = 0;
    for (int i = 0; i < 5; i++) {
        int mod_result = n % 10;
        // printf("n:%d | modresult: %d\n", n, mod_result);

        sum += mod_result;
        n -= mod_result;
        n /= 10;
    }

    printf("%d\n", sum);

    return 0;
}