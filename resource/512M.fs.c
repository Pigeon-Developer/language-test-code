#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define FILE_SIZE (512 * 1024 * 1024) // 512M
#define FILE_NAME "random_data.bin"

int main() {
    FILE *file = fopen(FILE_NAME, "wb");
    if (file == NULL) {
        perror("无法创建文件");
        return 1;
    }

    srand((unsigned) time(NULL));
    for (size_t i = 0; i < FILE_SIZE; ++i) {
        unsigned char random_byte = rand() % 256;
        fwrite(&random_byte, sizeof(random_byte), 1, file);
    }

    fclose(file);
    printf("随机数据已写入 %s\n", FILE_NAME);
    return 0;
}
