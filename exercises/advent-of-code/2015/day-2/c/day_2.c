// surface area of the box (2*l*w + 2*w*h + 2*h*l)
// surface area of smallest side

// read line from file
// process int w, h, l 


#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define PUZZLE_INPUT_PATH "../puzzle_input.txt"
#define BUFFER_SIZE 1024

int min(int a, int b, int c) {
    int smallest = a;

    if (b < smallest)
        smallest = b;

    if (c < smallest)
        smallest = c;

    return smallest;

}

int main(void) {

    FILE *puzzle_file = fopen(PUZZLE_INPUT_PATH, "r");
    char buffer[BUFFER_SIZE];

    if (puzzle_file == NULL) {
        printf("failed to open file\n");
        return -1;
    }

    int w, l, h = 0;
    int surface_area_of_box = 0;
    int smallest_side = 0;
    int total = 0;
    int ribbon_total = 0;
    while (fgets(buffer, BUFFER_SIZE, puzzle_file)){
        buffer[strlen(buffer)-1] = 0; // get rid of newline
        printf("%s\n", buffer);

        w = atoi(strtok(buffer, "x"));
        l = atoi(strtok(NULL, "x"));
        h = atoi(strtok(NULL, "x"));

        surface_area_of_box = 2*w*l + 2*w*h + 2*h*l;
        int smallest_side_area = min(w*l, w*h, h*l);
        int smallest_perimeter = min(2*(w+l), 2*(w+h), 2*(h+l));

        printf("\tsurface area: %d\n", surface_area_of_box);
        printf("\tsmallest side surface area: %d\n", smallest_side_area);
        printf("\tsmallest perimeter: %d\n", smallest_perimeter);

        total += surface_area_of_box;
        total += smallest_side_area;

        ribbon_total += w * h * l; // volume
        ribbon_total += smallest_perimeter;
    }

    printf("total wrapping paper required: %d\n", total);
    printf("total ribbon required: %d\n", ribbon_total);

    return 0;
}