#include <stdio.h>

int main() {
    int result;
    int a = 5;
    int b = 10;

    // Inline assembly for addition on ARM64
    __asm__ (
        "add %w0, %w1, %w2;"    // ARM64 instruction: add w1 and w2, store result in w0
        : "=r" (result)         // Output: result is stored in a general-purpose register
        : "r" (a), "r" (b)      // Inputs: a and b in general-purpose registers
    );

    printf("Result: %d\n", result);  // Should print: Result: 15
    return 0;
}
