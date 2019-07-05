#include "./test.h"

void test_ft_memcpy()
{
	char arr[5];
	char arr2[5];
	void *a;

	arr[0] = 'y';
	arr[4] = 'y';
	a = ft_memcpy(arr2, arr, 5);
	assert(arr2[0] == 'y');
	assert(arr2[4] == 'y');
	assert(a == arr2);
}
