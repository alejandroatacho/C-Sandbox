#include <Python.h>
#include <stdio.h>  // For sprintf()

/**
 * @brief Main entry point for the program.
 *
 * Initializes the Python interpreter, runs some Python code, and then
 * finalizes the interpreter.
 *
 * @return 0 on success.
 */
int main() {
    // Initialize the Python interpreter
    Py_Initialize();

    // Execute some Python code
    PyRun_SimpleString("print('Hello from Python inside C!')");

    // Create a string that contains Python code
    char command[100];  // Increase size to accommodate larger strings
    int z;
    int x = 5;
    int y = x * 2;
    z = x + y;

    // Use sprintf to format the string with the value of x, y, and z
    sprintf(command, "print(%d)\nprint(%d)\nprint('x + y =', %d)", x, y, z);

    // Execute the Python code in the string
    PyRun_SimpleString(command);

    // Finalize the Python interpreter
    Py_Finalize();

    return 0;
}
