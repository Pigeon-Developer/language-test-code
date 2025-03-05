#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    FILE *file = fopen("1G_file.bin", "wb");
    if (file == NULL) {
        perror("Failed to create file");
        return 1;
    }

    srand(time(NULL)); // 初始化随机数种子

    // 每次写入 1MB 的随机数据
    char buffer[1024 * 1024];
    for (int i = 0; i < 1024; i++) {
        for (int j = 0; j < sizeof(buffer); j++) {
            buffer[j] = rand() % 256; // 生成随机字节
        }
        if (fwrite(buffer, sizeof(buffer), 1, file) != 1) {
            perror("Failed to write to file");
            fclose(file);
            return 1;
        }
    }

    fclose(file);
    return 0;
}
