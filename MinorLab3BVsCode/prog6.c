#include <stdio.h>
#include <stdlib.h> // for atoi()

int main() {
    printf("Enter an integer value. "); 
    char buf[100]; //buf is an array of 100 characters
    scanf("%s", buf); //read a string from the keyboard and store it in buf
    printf("The entered value is \"%s\" \n ", buf);
    int n; 
    sscanf(buf, "%d", &n); //read an integer from buf and store it in n
    printf("Sscanf conversion of the entered value is %d\n", n);
    n = atoi(buf); //convert buf to an integer and store it in n
    printf("Atoi conversion of the entered value is %d\n", n);
    
    n = 0;
    for (int i = 0; buf[i] != '\0'; i++) {
        n = 10 * n + buf[i] - '0';
    }
    printf("My conversion of the entered value is %d\n", n);
    return 0;
}