#include <stdio.h>

// The distance of a marathon in kilometeres.
int main (void){
    int miles,yards;
    float kilometers;

    miles = 26;
    yards = 385;
    kilometers = 1.609 * (miles + yards / 1760.0);
    printf("The marathon is %f kilometers long.\n",kilometers);
    return 0;

}