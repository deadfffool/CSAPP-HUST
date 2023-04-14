#include<stdio.h>


struct student {
    char  name[8];
    short age;
    float score;
    char  remark[200];
};
student  old_s[3];


struct test1 {
    char a;
    char b;
    long long c;
    double d;
};

test1 test = {'a','b',6,1.1};

int main()
{
    //关于结构体对齐数的实验
    for (int i = 0; i < 3; i++)
    {
        printf("name : OX%p\n", &old_s[i].name);
        printf("age : OX%p\n", &old_s[i].age);
        printf("sorce : OX%p\n", &old_s[i].score);
        printf("remark : OX%p\n", &old_s[i].remark);
        printf("\n");
    }
    printf("可以看到sorce存放的地址跟4对齐了，age与sorce之间留下了两个字节的空,数组结构体中第二个student的name与上一个结构体中的remark的尾部对齐\n");

    printf("a : OX%p\n", &test.a);
    printf("b : OX%p\n", &test.b);
    printf("c : OX%p\n", &test.c);
    printf("d : OX%p\n", &test.d);
    printf("可以看到longlong占了8个字节，c与b中留下了六个字节的空\n");

    //不同类型数字在内存中的表示方式
    unsigned int a = 100;
    float b = 3.6;
    double c = 1.0000009;
    long long d[4] = { 1,4,101,61 };



	return 0;
}
