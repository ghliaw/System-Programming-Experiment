#include "main.h"

int sum(int n)
{
	int i, s;
	s = 0;
	for(i=1;i<=n;i++)
		s = s + i;
	return s;
}