#include "main.h"

/**
 * binary_to_uint - Converts binary to unsigned int.
 * @b: String with binary number.
 *
 * Return: Converted unsigned int or 0 if there's an error.
 */
unsigned int binary_to_uint(const char *b)
{
	int a;
	unsigned int num = 0;

	if (!b)
		return (0);

	for (a = 0; b[a]; a++)
	{
		if (b[a] != '0' && b[a] != '1')
			return (0);
	}

	for (a = 0; b[a]; a++)
	{
		num <<= 1;
		if (b[a] == '1')
			num += 1;
	}

	return (num);
}
