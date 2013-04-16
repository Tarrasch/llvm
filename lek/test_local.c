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


    i = 5;
    *j = 4;

    array[i] = 10;
    array[i + 1] = 9;
    array[i - 1] = 8;


    i = 9;
    *j = 6;

    if (i > 5) {
        printf("array[%d]=%d, array[%d]=%d, array[%d]=%d\n",
                i, array[i], i + 1, array[i + 1], i - 1, array[i - 1]);
    }

    return 0;
}

