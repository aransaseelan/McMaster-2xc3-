#include <stdio.h>
#include <math.h>

int main(){
    printf("We are going to evaluate the expression the logarithm base 10 of 'x' \n");
    printf("Please enter a number for 'x': \n");
    float x;
    scanf("%f", &x);
    double y = log10(x);
    printf("The logarithm base 10 of %f is %lf \n", x, y); // %lf is a placeholder for a double, %f is a placeholder for a float
    printf("Check: %f \n", pow(10,y));
}