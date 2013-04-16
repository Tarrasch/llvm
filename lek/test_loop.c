#include <stdio.h>
#include <stdlib.h>

int main() {
    int array[10];
    int i;

    for (i = 0; i < 11; ++i) {
        array[i] = 0;
        if (rand() % 10 == 0) {
            break;
        }
    }

    i = 5;
    printf("array[%d]=%d\n", i, array[i]);

    return 0;
}
