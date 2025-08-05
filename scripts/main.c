//#include <stdint.h>

//uint32_t factorial(uint32_t n) {
//    if (n <= 1) return 1;
//    return n * factorial(n - 1);
//}
//
//void main() {
//    int a = factorial(11);
//    while (1);
//}



#include <stdint.h>

int binomialCoeff(int n, int k)
{
	if(k > n) return 0;
	if(k == 0 || k == n) return 1;
	
	return binomialCoeff(n - 1, k - 1) + binomialCoeff(n - 1, k);
}

int main() {

uint32_t result = 0;
result = binomialCoeff(20,17);

	while(1);
	return 0;

}
