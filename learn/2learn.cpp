#include <iostream>


namespace node_2_1_2
{
	void test_2_3(void){
		unsigned u = 10, u2 = 42;
		std::cout << u2 - u << std::endl; // 32
		std::cout << u - u2 << std::endl; // 4294967295 - 31

		int i = 10, i2 = 42;
		std::cout << i2 - i << std::endl; // 32
		std::cout << i - i2 << std::endl; // -32
		std::cout << i - u << std::endl;  // 0
		std::cout << u - i << std::endl;  // 0
	}


}

namespace node_2_1_3
{
	void test_2_6(void){
		int mount = 9, day = 7;      // 十進制
		int mount2 = 011, day2 = 07; // 八進制
		std::cout << "Mount: " << mount << ", Day: " << day << std::endl;
		std::cout << "Mount2: " << mount2 << ", Day2: " << day2 << std::endl;
	}
}

namespace node_test
{
	void test_2_9(void)
	{
		std::cin >> int input_value;
	}
}


int main()
{
	node_test::test_2_9();

	return 0;
}

