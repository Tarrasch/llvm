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

/* int access(int b){ */
/*   int arr[100]; */
/*   return arr[b] + arr[b+1]; */
/* } */
