#include "./test.h"
#include <string.h>

void test_ft_bzero()
{
	char arr[5];

	arr[0] = 'y';
	arr[4] = 'y';
	ft_bzero(arr, 5);
	assert(arr[0] == 0);
	assert(arr[4] == 0);
}
