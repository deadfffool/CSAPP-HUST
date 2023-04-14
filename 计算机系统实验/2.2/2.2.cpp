#include<stdio.h>
#include<stdlib.h>

#define Max_short 32767
#define Max_un 65535
typedef unsigned char byte;

short short_OF(short a, short b)
{
    int sum;
    if ((a > 0 && b > Max_short - a) || (a < 0 && b < Max_short - a))
    {
        printf("OVERFLOW!\n");
        return 0;
    }
    sum = a + b;
    return sum;
}

unsigned short un_of(unsigned short a, unsigned short b)
{
    unsigned short sum;
    if (a > Max_un - b)
    {
        printf("OVERFLOW!\n\n");
        return 0;
    }
    sum = a + b;
    return sum;
}

void printbinry(int* num)
{
    int count = 31;
    while (count >= 0)
    {
        int bitnum = *num >> count;
        int byte = bitnum & 1;
        printf("%d", byte);
        if (count % 4 == 0)
            printf(" ");
        count--;
    }
    printf("\n");

}

void show_float(float* a)
{
    byte* ptr = (byte*)a;
    int i, j;
    // 打印每个字节的内容
    for (i = 0; i < 4; i++)
    {
        printf("%02x ", *ptr);
        ptr++;
    }
    printf("\n");
    int* ptr1 = (int*)a;
    printbinry(ptr1);
    printf("\n");
    return;
}




int main()
{
    // printf("%d\n",sizeof(int));
    printf("test short!\n");
    short a, b;
    a = 30000; b = 20000;
    short_OF(a, b);
    printf("\ntest unsigned short!\n");
    unsigned short c, d;
    c = 40000; d = 40000;
    un_of(c, d);
    float f = 1.456;
    show_float(&f);
    printf("第31位是符号位，23~30位是阶码字段，0~22位是小数字段");
    return 0;
}

