/*************************************************************
 * Original :  Dr. Evil's Insidious Bomb, Version 1.1
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "support.h"
#include "phases.h"


FILE *infile;
char  stuid[11];   /* student id : xue hao */

int main(int argc, char *argv[])
{
    char *input;
    int    flag;
    /* Usage :   
    /* (1)  When run with no arguments, the bomb reads its input lines 
     *       from standard input. */
    /* (2)  When run with one argument <file>, the bomb reads from <file> 
     *        until EOF, and then switches to standard input. Thus, as you 
     *       defuse each phase, you can add its defusing string to <file> and
     *       avoid having to retype it. */
   /* (3)  You can't call the bomb with more than 1 command line argument. */

    if (argc == 1) {  
	infile = stdin;
    } 
    else if (argc == 2) {
	if (!(infile = fopen(argv[1], "r"))) {
	    printf("%s: Error: Couldn't open %s\n", argv[0], argv[1]);
	    exit(8);
	}
    }
    else {
	printf("Usage: %s [<input_file>]\n", argv[0]);
	exit(8);
    }

    /* Do all sorts of secret stuff that makes the bomb harder to defuse. */
    initialize_bomb();

  
    printf("Welcome to my fiendish little bomb. You have 6 phases with\n");
    printf("which to blow yourself up. Have a nice day!\n");

    printf("input your student id (U202115***)：\n");
    input =read_line();
    flag=check_student_id(input);
    if (!flag)  { 
        printf("bad student id \n");
        return  0;
   }
   strcpy(stuid,input);

    /* Hmm...  Six phases must be more secure than one phase! */
    printf("phase 1 : string compare!   please input your string :\n");
    input = read_line();             /* Get input                   */
    phase_1(input);                  /* Run the phase               */
    phase_defused();                 /* Drat!  They figured it out!
				      * Let me know how they did it. */
    printf("Congratulation！  Phase 1 defused. \n");
    printf("phase 2 : Cracking loop program! \n  please input  6 numbers :\n");
    /* The second phase is harder.  No one will ever figure out
     * how to defuse this... */
    input = read_line();
    phase_2(input);
    phase_defused();
    printf("Good!  That's number 2.  Keep going!\n");

    /* I guess this is too easy so far.  Some more complex code will
     * confuse people. */
    printf("phase 3 : Cracking switch ...case program! \n  please input  a number :\n");
    input = read_line();
    phase_3(input);
    phase_defused();
    printf("Halfway there!\n");

    /* Oh yeah?  Well, how good is your math?  Try on this saucy problem! */
    printf("phase 4 : Cracking recursive calls program! \n  please input  two numbers :\n");
    input = read_line();
    phase_4(input);
    phase_defused();
    printf("So you got that one.  Try this one.\n");
    
    /* Round and 'round in memory we go, where we stop, the bomb blows! */
    printf("phase 5 : pointers and array visit! \n  please input  a string :\n");
    input = read_line();
    phase_5(input);
    phase_defused();
    printf("Good work!  the last one ...\n");

    /* This phase will never be used, since no one will get past the
     * earlier ones.  But just in case, make this one extra hard. */
    printf("phase 6 : link list, struct, pointer visit ! \n  please input  6 numbers in a line :\n");
    input = read_line();
    phase_6(input);
    phase_defused();

    /* Wow, they got it!  But isn't something... missing?  Perhaps
     * something they overlooked?  Mua ha ha ha ha! */
    printf("Very Good !  You have defused all binary bombs! \n");
    return 0;
}
