/*
 * =====================================================================================
 *
 *       Filename:  benchmark.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  04/05/2013 05:39:34 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *   Organization:  
 *
 * =====================================================================================
 */
#include <stdlib.h>
#define M 20
#define N 20
#define K 20

#define foru(ii, n) for (int ii = 0; ii < n; ii++)

int a[M][N];
int b[N][K];

int res[M][K];

int main(){
}

// a*b
void other() {
  foru(i, M) {
    foru(k, K){
      int sum = 0;

      foru(j, N) {
        sum += a[i][j] * b[j][k];
      }
      res[i][k] = sum;
    }
  }
}
/* void matrix_mul() { */
/*   /1* foru(i, M) { *1/ */
/*   /1*   foru(k, K){ *1/ */
/*   /1*     int sum = 0; *1/ */
/*   /1*     foru(j, N) { *1/ */
/*   /1*       /2* sum += a[i][j] * b[j][k]; *2/ *1/ */
/*   /1*     } *1/ */
/*   /1*     res[i][k] = sum; *1/ */
/*   /1*   } *1/ */
/*   /1* } *1/ */
/* } */

