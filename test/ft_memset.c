#include "./test.h"

void test_ft_memset()
{
	char arr[5];
	void *a;

	arr[0] = 'y';
	arr[4] = 'y';
	a = ft_memset(arr, 0, 5);
	assert(arr[0] == 0);
	assert(arr[4] == 0);
	assert(a == arr);
}
