#include <stdio.h>
#include <math.h>

int main(){
    int x; // declare a variable called x
    printf("We are going to evaluate the expression the square root of \"x\" \n");
    printf("Please enter a number for \"x\": ");
    scanf("%d", &x);
    printf("You entered the value of  %d \n", x);
    float y = sqrt(x);
    printf("The square root of %d is %f \n", x, y);
    printf("Check: %f \n", y*y);
}
