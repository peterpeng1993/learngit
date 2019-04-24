// ConsoleApplication2.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//
#include "pch.h"
#include <iostream>
using namespace std;
int main()
{
	bool b = true;
	while (b)
	{
		cout << "现在正在下雨嘛？请输入'Y'或者‘N’";
		char c;
		cin >> c;
		switch (c)
		{
		case 'Y':
			cout << "现在正在下雨。" << endl;
			b = false;
			break;
		case 'N':
			cout << "现在没有下雨。" << endl;
			b = false;
			break;
		default:
			cout << "您输入了错误的字符!" << endl;
		}
	}
	return 0;
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门提示: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
