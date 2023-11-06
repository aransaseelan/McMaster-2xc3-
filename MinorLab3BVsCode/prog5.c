#include <stdio.h>
#include <ctype.h> // for isdigit()

int main(){
    printf("Enter a digit"); 
    char a;
    scanf("%c", &a);
    
    if(!isdigit(a)){
        printf("Not a digit");
        return 1; 
    }
    else {
    printf("The entered digit is %c and its decimal ASCII value is %d\n", a, a);
    int n = a - '0'; 
    printf("The numberic value of the entered digit is %d\n", n);
    return 0;
    }   
}