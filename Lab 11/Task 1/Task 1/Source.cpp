#include<iostream>
using namespace std;
int main()
{
	int arr[] = { 12345678, 87654321, 32145687, 13254678, 87612354 };

	
	for (int i = 2; i < 20; i = i + 4)
	{
		_asm
		{
			MOV ESI, i
			MOV EAX, [arr + ESI];


		}
        
	}

	return 0;
}