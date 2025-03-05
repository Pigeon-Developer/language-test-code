#include <stdio.h>
#include <unistd.h>

int main() {
    printf("程序开始，休眠 10 秒...\n");
    sleep(10);
    printf("休眠结束，程序退出。\n");
    return 0;
}
