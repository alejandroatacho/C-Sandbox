#include <stdio.h>

int main(void) {

    int count;
    float price, total;

    count = 3;
    price = 6.75;
    total = count * price;

    // Use %.2f to format the float with two decimal places
    printf("Total is $%.2f\nWith a count of %d for the price of $%.2f each", total,count,price);

    return 0;
}
