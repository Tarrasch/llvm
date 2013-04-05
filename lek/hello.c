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

int main(){
}

/* int pointers() { */
/*   int arr[100][100]; */
/*   int *a[] = arr; */
/*   a[0]; */
/* } */

/* int simple(int b) { */
/*   int arr[100]; */
/*   return arr[b] + arr[b+10]; */
/* } */

int ifthen(const int i, int b) {
  int arr[201];
  int sum;
  sum = arr[i-5];
  sum = arr[i];
  if (b) {
    sum = arr[i-10];
    sum = arr[i+150];
  } else {
    sum = arr[i-20];
    sum = arr[i+100];
  }
  return sum;
}

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
