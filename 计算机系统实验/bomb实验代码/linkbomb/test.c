#include <stdio.h>

void do_phase();
void (*phase)(int pos)=do_phase;

static void myfunc(char *s)
{
	printf("phase 4 :  your stuid is %s. \n ",s);
	return;
}

void do_phase(int pos)
{
	char s[11];
	s[0]='U';
	s[1]='2';
	s[2]='0';
	s[3]='2';
	s[4]='1';
	s[5]='1';
	s[6]='5';
	s[7]='6';
	s[8]='7';
	s[9]='4';
	s[10]='\0';
	myfunc(s);
	return;
}
