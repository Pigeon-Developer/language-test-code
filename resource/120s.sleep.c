#include <unistd.h>
#include <stdio.h>

int main() {
    printf("The program will sleep for 120 seconds...\n");
    sleep(120);
    printf("The program has woken up and will now exit.\n");
    return 0;
}
