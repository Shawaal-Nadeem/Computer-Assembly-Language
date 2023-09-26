#include<iostream>
using namespace std;
int main()
{
	int arr[] = { 1, 2, 3, 4, 5 };
	int sum = 0;
	
	_asm
	{
		MOV EDX,0
	}
	for (int i = 0; i < 20; i = i + 4)
	{

	_asm
	{
		MOV ESI, i
		MOV EAX, [arr + ESI]
		ADD EDX,EAX
		MOV sum,EDX
	}

	}

	cout << "Sum Of Array is : " << sum << endl;
	return 0;
}