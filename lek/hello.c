/*
 * =====================================================================================
 *
 *       Filename:  hello.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  03/08/2013 02:01:56 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#include <stdio.h>

typedef short		   	gsm_signal;		/* signed 16 bit */

struct fmtdesc {

	char * name, * longname, * suffix;

	int  (* init_input )  ((void)),
	     (* init_output)  ((void));

	int  (* input ) ((gsm_signal * )),
	     (* output) ((gsm_signal * ));

} f_audio = {
		"audio",
		"8 kHz, 8 bit u-law encoding with Sun audio header", ".au",
		NULL,
		NULL,
		NULL,
		NULL
}, f_ulaw = {
		"u-law", "plain 8 kHz, 8 bit u-law encoding", ".u",
		NULL,
		NULL,
		NULL,
		NULL 

}, f_alaw = {
		"A-law", "8 kHz, 8 bit A-law encoding", ".A",
		NULL,
		NULL,
		NULL,
		NULL

}, f_linear = {
		"linear",
		"16 bit (13 significant) signed 8 kHz signal", ".l",
		NULL,
		NULL,
		NULL,
		NULL
};

struct fmtdesc * alldescs[5] = {
	&f_audio,
	&f_alaw,
	&f_ulaw,
	&f_linear,
	(struct fmtdesc *)NULL
};


int main(){
	char * c;
	struct fmtdesc ** f;

	if (c) {

		for (f = alldescs; *f; f++) {
    }
	}
	return (struct fmtdesc *)0;
}

/* int main(){ */
/* } */

/* int pointers() { */
/*   int arr[100][100]; */
/*   int *a[] = arr; */
/*   a[0]; */
/* } */

/* int simple(int b) { */
/*   int arr[100]; */
/*   return arr[b] + arr[b+10]; */
/* } */

/* int ifthen(const int i, int b) { */
/*   int arr[201]; */
/*   int sum; */
/*   sum = arr[i-5]; */
/*   sum = arr[i]; */
/*   if (b) { */
/*     sum = arr[i-10]; */
/*     sum = arr[i+150]; */
/*   } else { */
/*     sum = arr[i-20]; */
/*     sum = arr[i+100]; */
/*   } */
/*   return sum; */
/* } */

/* int ifthen2(const int i, int b) { */
/*   int arr[201]; */
/*   int sum; */
/*   if (b) { */
/*     sum = arr[i-10]; */
/*     sum = arr[i+150]; */
/*   } else { */
/*     sum = arr[i-20]; */
/*     sum = arr[i+100]; */
/*   } */
/*   sum = arr[i-5]; */
/*   sum = arr[i]; */
/*   return sum; */
/* } */

/* int simple_loop(int i, int j, int b){ */
/*   int arr[100]; */
/*   while(j == arr[j]) { */
/*     i = arr[b]; */
/*   } */
/*   return i; */
/* } */

/* int loop(int i, int j, int b){ */
/*   int arr[100]; */
/*   while(arr[i] != arr[j]) { */
/*     i++; */
/*     j-=12345678; */
/*     arr[b]; */
/*   } */
/*   return i; */
/* } */

/* int loop(int n){ */
/*   int arr[100]; */
/*   int s = 0; */
/*   for(int i=0; i<=n; ++i) { */
/*     s += arr[i]; */
/*   } */
/*   return s; */
/* } */

/* int loop2(int n, int m){ */
/*   int arr[100][100]; */
/*   int s = 0; */
/*   for(int i=0; i<n; ++i) { */
/*     for(int j=0; j<m; ++j) { */
/*       s += arr[i][j]; */
/*       /1* s += arr[i] + arr[j]; *1/ */
/*     } */
/*   } */
/*   return s; */
/* } */

/* int access(int b){ */
/*   int arr[100]; */
/*   return arr[b] + arr[b+1]; */
/* } */
