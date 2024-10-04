# cython: profile=True

from datetime import datetime

def main():
    # Python object to store the current timestamp
    currentTimeStamp = datetime.now();

    # Print the current timestamp (formatted like in Python, not C)
    print(f"Current Time Stamp: {currentTimeStamp}");

    # If you want to use C types for performance in other places, for example:
    cdef int i
    try:
        for i in range(10+1): # 10+1 to include 10
            print(f"Count: {i}");
            if i == 10:
                print("Counting finished!");
            elif i == 0:
                print("Counting started!");

        return 0
    except Exception as e:
        print(f"Error: {e}");
        return 1

if __name__ == "__main__":
    main()
