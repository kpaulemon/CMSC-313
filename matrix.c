// Kassy Paulemon
// 12/5/25
// M/W 8:30-9:45am
// Write two functions matmult(result_mat, first_mat, second_mat) and matadd(result_mat, first_mat, second_mat). matmult() will matrix-multiply two
// matrices together and place the result in a third, and matadd() will add two matrices together and place the result in a third.
#include <stdio.h>

int main() 
{

// Function prototypes
    void matmult(int result[3][3], int first[3][3], int second[3][3]);
    void matadd(int result[3][3], int first[3][3], int second[3][3]);

// Function inputs
    int A[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    int B[3][3] = {{1, 2, 0}, {3, 4, 5}, {0, 6, 7}};
    int result1[3][3], result2[3][3];

// Evaluate A*B+A by calling matmult and matadd functions
    matmult(result1,A,B);
    matadd(result2,result1,A);

// Print matrix A and B
    printf("    [1 2 3");
    printf("]           [1 2 0]\n");
    printf("A = |4 5 6");
    printf("|       B = |3 4 5|\n");
    printf("    [7 8 9");
    printf("]           [0 6 7]\n\n");

// Print result of A*B+A
    printf("        [");
    for (int c = 0; c < 3; c++)
        {
            if (c!=2)
                printf("%*d ",3, result2[0][c]);
            else
                printf("%*d",3, result2[0][c]);

        }
    printf("]\nA*B+A = |");
    for (int c = 0; c < 3; c++)
        {
            if (c!=2)
                printf("%*d ",3, result2[1][c]);
            else
                printf("%*d",3, result2[1][c]);

        }
    printf("|\n        [");
    for (int c = 0; c < 3; c++)
        {
            if (c!=2)
                printf("%*d ",3, result2[2][c]);
            else
                printf("%*d",3, result2[2][c]);

        }
    printf("]\n\n");
    
    return 0;
}

// Definition of function matmult
// Matrix-multiply two matrices together and place the result in a third matrix
void matmult(int result[3][3], int first[3][3], int second[3][3])
{
    int total = 0;
    for (int r = 0; r < 3; r++)
    {
        for (int i = 0; i < 3; i++)
        {
            total = 0;
            for (int c = 0; c < 3; c++)
                total += first[r][c] * second[c][i];
            result[r][i] = total;
        }
    }
}

// Definition of function matadd
// Add two matrices together and place the result in a third matrix
void matadd(int result[3][3], int first[3][3], int second[3][3])
{
    for (int r = 0; r < 3; r++)
    {
        for (int c = 0; c < 3; c++)
            result[r][c] = first[r][c] + second[r][c];
    }
}