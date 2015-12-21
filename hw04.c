#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

//CSE 240 HW 4
//NAME: Thomas Wheeler

//Q1: update forward declarations (5)
//Update the forward declarations for the 4 functions used in the previous homework to implement pointers

//CODE HERE
void initialize_matrices(int * a, int * b, int * c);
void fill_matrix(int * a);
void add_matrices(int * a, int * b, int * c);
void print_sum_matrix(int *c);

int main()
{

	int a[3][3];
	int b[3][3];
	int c[3][3];

	//Q2: define pointers (5)
	//Define pointers ap, bp, and cp to the matrices that are defined above

	//CODE HERE
	int *ap = a, *bp = b, *cp = c;
	

	//Uncomment these once you've defined your matrices

	initialize_matrices(ap, bp, cp);

	printf("Matrix a:\n");
	fill_matrix(ap);

	printf("Matrix b:\n");
	fill_matrix(bp);

	add_matrices(ap, bp, cp);

	print_sum_matrix(cp);

	

	return 0;
}

//Q3: initialize (10)
//loop through the matrices and set each integer value to 0 using pointers
void initialize_matrices(int* a, int* b, int* c)
{

	//CODE HERE
	int i,j;
	
	for(i = 0; i < 3; i ++){
		for(j = 0; j < 3; j ++){
			*(a + i * 3 + j) = 0;
			*(b + i * 3 + j) = 0;
			*(c + i * 3 + j) = 0;
		}
	}

}

//Q4: insert (10)
//Loop through the given matrix and fill it with input integers using pointers.
//Optional: You can prompt for input by printing "Enter the next integer: "
void fill_matrix(int* matrix)
{

	//CODE HERE
	int i,j;
	
	for(i = 0; i < 3; i ++){
		for(j = 0; j < 3; j++){
			printf("Enter the next integer: ");
			scanf("%d", (matrix + i * 3 + j) );
		}
	}
}

//Q5: addition(10)
//Loop through and add together the matrices a and b using pointers. Store the sum in matrix c using pointers.
//(hint: the result for c[0][0] is the sum of a[0][0] and b[0][0])
//(hint: it may be easier to store the individual integer values for a and b in temporary integer variables, then storing the sum in c)
void add_matrices(int* a, int* b, int* c)
{

	//CODE HERE
	int i, j;
	
	for(i = 0; i < 3; i ++){
		for (j = 0; j < 3; j++){
			*(c + i * 3 + j) = *(a + i * 3 + j) + *(b + i * 3 + j);
		}
	}
	
}

//Q6: print(10)
//print the matrix c by row in the following format using tabs (\t) using pointers:
// X     X     X
// X     X     X
// X     X     X
//(hint: printf( "%d\t", _ ))
void print_sum_matrix(int* c)
{

	//CODE HERE
	int i,j;
	
	for(i = 0; i < 3; i++){
		for(j = 0; j < 3; j ++){
			printf("%d\t", *(c + i * 3 + j));
		}
		printf("\n");
	}

}
