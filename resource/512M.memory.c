#include <stdio.h>
#include <stdlib.h>

int main() {
    // 申请 512M 内存
    size_t size = 512 * 1024 * 1024; // 512M
    char *memory = (char *)malloc(size);

    if (memory == NULL) {
        fprintf(stderr, "内存分配失败\n");
        return 1;
    }

    // 使用内存
    for (size_t i = 0; i < size; i++) {
        memory[i] = 0;
    }

    printf("成功申请并使用了 512M 内存\n");

    // 释放内存
    free(memory);

    return 0;
}
