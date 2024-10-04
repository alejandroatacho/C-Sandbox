cdef extern from "inline_asm.h":
    int add_in_asm_arm(int a, int b)  # Declare the external function

cdef extern from "stdio.h":
    int printf(const char *format, ...)

cpdef void test_inline_assembly():
    cdef int a = 5
    cdef int b = 10
    cdef int result = add_in_asm_arm(a, b)
    printf("Result: %d\n", result)
