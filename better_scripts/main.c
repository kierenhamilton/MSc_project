#include <stdint.h>

uint32_t factorial(uint32_t n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

void main() {
    uint32_t result = factorial(11);
    while (1);
}

