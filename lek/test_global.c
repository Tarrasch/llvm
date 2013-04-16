#include <stdio.h>
#include <stdlib.h>

int main() {
    int array[10];
    int i, *j;

    if (rand() % 10 == 0) {
        j = &i;
    } else {
        j = &array[0];
    }

    for (i = 0; i < 10; ++i) {
        array[i] = 0;
    }

    i = 7;
    *j = 3;
    if (i > 5) {
        array[i + 1] = 20;
    } else {
        array[i + 1] = 10;
    }

    printf("array[%d]=%d\n", i, array[i]);

    return 0;
}

