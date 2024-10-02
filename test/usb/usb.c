#include <stdio.h>
#include <IOKit/usb/IOUSBLib.h>
#include <IOKit/IOCFPlugIn.h>
#include <CoreFoundation/CoreFoundation.h>
// Use: gcc -o usbdetect usb.c -framework IOKit -framework CoreFoundation
int main(void) {
    // Create a dictionary to match USB devices
    // The dictionary is a key-value pair structure that is used to match
    // services within the I/O Registry. The key-value pairs are typically
    // used to identify the type of service you are interested in, such as
    // USB devices, serial ports, etc.
    CFMutableDictionaryRef matchingDict = IOServiceMatching(kIOUSBDeviceClassName);
    
    if (matchingDict == NULL) {
        printf("Failed to create matching dictionary.\n");
        return -1;
    }
    
    // Get an iterator for matching services (USB devices in this case)
    // The iterator is used to traverse the list of services that match the
    // criteria specified in the matching dictionary.
    io_iterator_t iterator;
    kern_return_t kr = IOServiceGetMatchingServices(kIOMainPortDefault, matchingDict, &iterator);
    
    if (kr != KERN_SUCCESS) {
        printf("Failed to get matching services.\n");
        return -1;
    }

    // Iterate over all detected USB devices
    io_service_t usbDevice;
    while ((usbDevice = IOIteratorNext(iterator))) {
        // Access device properties, like vendor ID, product ID, etc.
        // The properties of a service can be accessed using the
        // IORegistryEntryCreateCFProperty() function.
        CFStringRef deviceName = (CFStringRef) IORegistryEntryCreateCFProperty(usbDevice, CFSTR(kUSBProductString), kCFAllocatorDefault, 0);
        
        if (deviceName) {
            // Print the device name
            char name[256];
            if (CFStringGetCString(deviceName, name, sizeof(name), kCFStringEncodingUTF8)) {
                printf("USB Device: %s\n", name);
            }
            // Release the device name string
            CFRelease(deviceName);
        }
        
        // Release the device reference
        // This is necessary to free up memory allocated for the device
        // reference.
        IOObjectRelease(usbDevice);
    }
    
    // Release the iterator
    // This is necessary to free up memory allocated for the iterator.
    IOObjectRelease(iterator);

    return 0;
}
