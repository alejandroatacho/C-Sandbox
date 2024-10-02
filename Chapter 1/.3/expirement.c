#include <stdio.h>
#include <dirent.h>

int main() {
    // Directory path you want to read
    const char *directoryPath = ".";  // "." refers to the current directory

    // Open the directory
    DIR *directory = opendir(directoryPath);

    // Check if the directory was successfully opened
    if (directory == NULL) {
        printf("Could not open the directory\n");
        return 1;
    }

    // Structure to hold the directory entries (files/folders)
    struct dirent *entry;

    // Loop through each entry in the directory
    while ((entry = readdir(directory)) != NULL) {
        printf("%s\n", entry->d_name);  // Print the name of the file or directory
    }

    // Close the directory
    closedir(directory);

    return 0;
}
