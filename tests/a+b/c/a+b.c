#include <stdio.h>

int main() {
    int a, b;
    // 从标准输入中按行读入空格分割的两个数字
    while (scanf("%d %d", &a, &b) == 2) {
        // 计算他们的和之后输出
        printf("%d\n", a + b);
    }
    return 0;
}
