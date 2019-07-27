#include "./test.h"

void test_ft_strdup()
{
	char *str;

	str = ft_strdup("0123");
	assert(str[0] == '0' && str[2] == '2');
}
