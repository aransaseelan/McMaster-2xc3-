#include <stdio.h>

int main(){
    printf("We are going to evaluate the expression \"(x*3)/2\" \n");
    printf("Please enter a number for \"x\": ");
    int x;
    scanf("%d", &x); // scanf() is a function that reads input from the user, %d is a placeholder for an integer
    printf("The value of \"x\" is set to %d \n", x);
    printf("The integer value of the expression is %d \n", (x*3)/2);
    printf("The floating point value of the expression is %f \n", (x*3)/2.0);
}