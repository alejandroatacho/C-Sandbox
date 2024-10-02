#include <stdio.h>

int main(void) {

    int x;
    x = 5;

    int y = 15;
    float z = 3.14;
    char a = 'T';
    char b[] = "est";

    printf("x is %d\n", x);
    printf("y is %d\n", y);

    printf("a + b is %c%s\n", a, b); // Print 'a' and concatenate string 'b'
    printf("z is %f\n", z);
    return 0;
}
