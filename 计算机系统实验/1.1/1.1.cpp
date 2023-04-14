#define _CRT_SECURE_NO_WARNINGS 

#include<stdio.h>
#include<string.h>

char message[500];

struct student {
    char  name[8];
    short age;
    float score;
    char  remark[200];
};    // 13*16+8=216   8+4+4+200=216  其中short 类型因为结构体的对齐法则被对齐了
student  old_s[3];
student  new_s[3];

int  pack_student_bytebybyte(student* s, int sno, char* buf);
int  pack_student_whole(student* s, int sno, char* buf);
int restore_student(char* buf, int len, student* s);

int main()
{
    /*初始化*/

    //3+2+4+4+2+3+2+4+4+2+3+2+4+3+2=44
    strcpy(old_s[0].name, "ycx");
    old_s[0].age = 18;
    old_s[0].score = 100.1;
    strcpy(old_s[0].remark, "good");
    strcpy(old_s[1].name, "hjy");
    old_s[1].age = 22;
    old_s[1].score = 11.2;
    strcpy(old_s[1].remark, "nice");
    strcpy(old_s[2].name, "jxd");
    old_s[2].age = 99;
    old_s[2].score = 50.1;
    strcpy(old_s[2].remark, "aha");


    //printf("OX%p\n\n", message);


    int i, result1 = 0, result2 = 0;
    printf("原来的结构体数据\n");
    for (i = 0; i < 3; i++)
    {
        printf("name : OX%p\n", &old_s[i].name);
        printf("age : OX%p\n", &old_s[i].age);
        printf("sorce : OX%p\n", &old_s[i].score);
        printf("remark : OX%p\n", &old_s[i].remark);
        printf("\n");
    }
    //
    // 
    // 
    result1 = pack_student_bytebybyte(&old_s[0], 1, message); // 一个字节一个字节读入
    result2 = pack_student_whole(&old_s[1], 2, message + result1);//一句一句读入
    printf("占用的空间 : %d\n", result1 + result2);  //打印压缩长度
    restore_student(message, 44, new_s);//解压缩

    //打印结果
    printf("解压缩之后的结构体数据\n");
    for (i = 0; i < 3; i++)
    {
        printf("name : %s\n", new_s[i].name);
        printf("age : %d\n", new_s[i].age);
        printf("sorce : %lf\n", new_s[i].score);
        printf("remark : %s\n", new_s[i].remark);
        printf("\n");
    }


    return 0;
}


int  pack_student_bytebybyte(student* s, int sno, char* buf)
{
    int i, j;
    char* p1, * p2;
    p2 = buf;
    for (i = 0; i < sno; i++)
    {
        p1 = s[i].name;
        while (*p1 != '\0')
        {
            *p2 = *p1;
            p1++; p2++;
        }
        *p2 = '\0';
        p2++;
        p1 = (char*)&s[i].age;
        for (j = 0; j < 2; j++)
        {
            *p2 = *p1;
            p1++; p2++;
        }
        p1 = (char*)&s[i].score;
        for (j = 0; j < 4; j++)
        {
            *p2 = *p1;
            p1++; p2++;
        }
        p1 = s[i].remark;
        while (*p1 != '\0')
        {
            *p2 = *p1;
            p1++; p2++;
        }
        *p2 = '\0';
        p2++;
    }
    return p2 - buf;
}
int  pack_student_whole(student* s, int sno, char* buf)
{
    int i;
    char* p1, * p2;
    p2 = buf;
    for (i = 0; i < sno; i++)
    {
        p1 = s[i].name;
        strcpy(p2, p1);
        p2 += (strlen(p1) + 1);
        p1 = (char*)&s[i].age;
        strncpy(p2, p1,2);
        p2 += 2;
        p1 = (char*)&s[i].score;
        strcpy(p2, p1);
        //p2 += 4;
        //p1 = s[i].remark;
        //strcpy(p2, p1);
        p2 += (strlen(p1) + 1);
    }

    return p2 - buf;
}
int restore_student(char* buf, int len, student* s)
{
    int i, j;
    char* p1, * p2;
    p1 = buf;
    for (i = 0; i < 3; i++)
    {
        p2 = s[i].name;
        while (*p1 != '\0')
        {
            *p2 = *p1;
            p2++; p1++;
        }
        *p2 = '\0';
        p1++;
        p2 = (char*)&s[i].age;
        for (j = 0; j < 2; j++)
        {
            *p2 = *p1;
            p1++; p2++;
        }
        p2 = (char*)&s[i].score;
        for (j = 0; j < 4; j++)
        {
            *p2 = *p1;
            p1++; p2++;
        }
        p2 = s[i].remark;
        while (*p1 != '\0')
        {
            *p2 = *p1;
            p1++; p2++;
        }
        *p2 = '\0';
        p1++;
    }

    return 0;
}