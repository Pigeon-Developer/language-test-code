#include <stdio.h>

// 计算 Fibonacci 数列的第 n 项
unsigned long long fib(int n) {
    if (n <= 1) return n;
    unsigned long long a = 0, b = 1, c;
    for (int i = 2; i <= n; i++) {
        c = a + b;
        a = b;
        b = c;
    }
    return b;
}

int main() {
    int n = 120;
    printf("Fibonacci number at position %d is %llu\n", n, fib(n));
    return 0;
}
