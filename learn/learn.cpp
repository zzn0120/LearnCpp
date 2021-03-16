#include <iostream>

/* 第一章 */
namespace node_1_2
{
	/* 1.3: 編寫程序，在標準輸出上打印hello,world.
	 * 1.4:
	 * 我們的程序使用加法運算符+來將兩個數相加。編寫程序使用乘法運算符*，打印兩個數的積。
	 * 1.5:
	 * 我們將所有輸出操作放在一條很長的語句中。重寫程序，將每個運算對象的打印操作放在一條獨立的語句中。
	 * 1.6: 解釋下面程序片段是否合法。
	 * std::cout << "The sum of " << v1;
	 *           << " and " << v2;
	 *           << " is " << v1 + v2 << std::endl;
	 * 如果程序時合法的，它輸出什麼？如果程序不合法，原因何在？應該如何修正？
	 * 
	 **/
	
	void test_1_3(void)
	{
		std::cout << "Hello, World" << std::endl;
	}

	void test_1_4(void)
	{
		int a = 10;
		int b = 20;
		std::cout << a << " * " << b << " = " << a * b << std::endl;
	}

	void test_1_5(void)
	{
		int a = 10;
		int b = 20;
		std::cout << a << " * " << b << " = " << a * b << std::endl;
	}

	/* 1.6
	 * 第一行中寫了分號代表cout已經結束，後面的兩條語句缺少了std::cout，失去了左值導致變異報錯。
	 *
	 * */
};

namespace node_1_3
{
	void test_1_7(void)
	{
		/* 片段1 片段2 片段3 */
		std::cout << "test 1.7" << std::endl;

	}
	void test_1_8(void)
	{
		std::cout << "/*";
		std::cout << "*/";
		std::cout << "*/";
		std::cout << /* "*/" /* "/*" */;
	}
}

namespace node_1_4_1
{
	void test_1_9(void){
		int val = 50;
		int sum = 0;
		while(val <= 100)
		{
			sum += val;
			val++;
		}
		std::cout << "Sum 50~100, " << sum << std::endl;
	}
	void test_1_10(void){
		int val = 10;
		while(val >= 0)
		{
			std::cout << val-- << std::endl;
		}
	}
	void test_1_11(void){
		
		int inA;
		int inB;

		std::cout << "Input two value, Output range of them integer" << std::endl;

		std::cin >> inA >> inB;
		int max = inA > inB ? inA : inB;
		int start = inA > inB ? inB : inA;
		while(start <= max)
		{
			std::cout << start << std::endl;
			start++;
		}

	}

}

namespace node_1_4_2
{
	void test_1_12(void){
		int sum = 0;
		for(int i = -100; i <= 100; ++i)
		{
			sum += i;
		}
		std::cout << "Sum " << sum << std::endl;
	}

	void test_1_13(void)
	{
		int sum = 0;
		for(int i = 50; i <= 100; ++i)
		{
			sum += i;
		}

		for(int i = 10; i >= 0; --i)
		{
			std::cout << i << std::endl;
		}

		int a, b;
		std::cin << a << b;
		int end = a > b ? a : b;
		int begin = a > b ? b : a;

		for(int i = begin; i != end; ++i)
		{
			std::cout << i << endl;
		}


	}

}



int main()
{
	node_1_4_2::test_1_12();

	return 0;
}
