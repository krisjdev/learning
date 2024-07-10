// surface area of the box (2*l*w + 2*w*h + 2*h*l)
// surface area of smallest side

// read line from file
// process int w, h, l 


#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define PUZZLE_INPUT_PATH "../puzzle_input.txt"
#define BUFFER_SIZE 1024

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

    while (fgets(buffer, BUFFER_SIZE, puzzle_file)){
        buffer[strlen(buffer)-1] = 0; // get rid of newline
        printf("%s\n", buffer);

        w = atoi(strtok(buffer, "x"));
        l = atoi(strtok(NULL, "x"));
        h = atoi(strtok(NULL, "x"));

        surface_area_of_box = 2*w*l + 2*w*h + 2*h*l;

        smallest_side = w < l ? w :  l < h ? l : h;

        int smallest_side_a = w*l;
        int smallest_side_b = w*h;
        int smallest_side_c = h*l;

        printf("\tw*l: %d\n", smallest_side_a);
        printf("\tw*h: %d\n", smallest_side_b);
        printf("\th*l: %d\n", smallest_side_c);
        
        int smallest_side_area = smallest_side_a;
        
        if (smallest_side_b < smallest_side_area)
            smallest_side_area = smallest_side_b;

        if (smallest_side_c < smallest_side_area)
            smallest_side_area = smallest_side_c;

        printf("\tsurface area: %d\n", surface_area_of_box);
        printf("\tsmallest side surface area: %d\n", smallest_side_area);

        total += surface_area_of_box;
        total += smallest_side_area;
    }

    printf("total required: %d\n", total);

    return 0;
}