#include <pcap.h>
#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

// Global flag to stop the capture
volatile sig_atomic_t stop_flag = 0;

// Signal handler to stop the capture
void handle_signal(int signal) {
    stop_flag = 1;
}

// Callback function to process each packet captured
void packet_handler(u_char *args, const struct pcap_pkthdr *header, const u_char *packet) {
    printf("Packet captured, length: %d bytes\n", header->len);
    // You can add more logic here to analyze the packet data
    // For example, you can inspect IP headers, TCP headers, etc.
}

int main(int argc, char *argv[]) {
    pcap_if_t *alldevs;
    pcap_if_t *device;
    pcap_t *handle;                 // Session handle
    char errbuf[PCAP_ERRBUF_SIZE];  // Error string
    struct bpf_program fp;          // The compiled filter
    char filter_exp[] = "ip";       // The filter expression
    bpf_u_int32 net;                // IP of our sniffing device

    // Find all network devices
    if (pcap_findalldevs(&alldevs, errbuf) == -1) {
        fprintf(stderr, "Error finding devices: %s\n", errbuf);
        return 2;
    }

    // Select the first available device
    device = alldevs;
    if (device == NULL) {
        printf("No devices found.\n");
        pcap_freealldevs(alldevs);
        return 2;
    }

    printf("Device: %s\n", device->name);

    // Open the session in promiscuous mode
    handle = pcap_open_live(device->name, BUFSIZ, 1, 1000, errbuf);
    if (handle == NULL) {
        fprintf(stderr, "Couldn't open device %s: %s\n", device->name, errbuf);
        pcap_freealldevs(alldevs);
        return 2;
    }

    // Compile and apply the filter to capture only IP traffic
    if (pcap_compile(handle, &fp, filter_exp, 0, net) == -1) {
        fprintf(stderr, "Couldn't parse filter %s: %s\n", filter_exp, pcap_geterr(handle));
        pcap_freealldevs(alldevs);
        return 2;
    }
    if (pcap_setfilter(handle, &fp) == -1) {
        fprintf(stderr, "Couldn't install filter %s: %s\n", filter_exp, pcap_geterr(handle));
        pcap_freealldevs(alldevs);
        return 2;
    }

    // Set up signal handler to stop capture after 10 seconds
    signal(SIGALRM, handle_signal);
    alarm(10);  // Set the timer for 10 seconds

    printf("Starting packet capture for 10 seconds...\n");

    // Capture packets until the timer expires
    while (!stop_flag) {
        pcap_loop(handle, 1, packet_handler, NULL);  // Capture one packet at a time
    }

    printf("Capture stopped.\n");

    // Close the session and free the device list
    pcap_close(handle);
    pcap_freealldevs(alldevs);

    return 0;
}
