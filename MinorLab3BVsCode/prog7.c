#include <stdio.h>

int main(){
    printf("Enter date in the format DD/MM/YYYY: \n"); 
    char buf[100];
    scanf("%s", buf);
    int day, month, year;
    day = (buf[0] - '0') * 10 + (buf[1] - '0');
    month = (buf[3] - '0') * 10 + (buf[4] - '0');
    year = (buf[6] - '0') * 1000 + (buf[7] - '0') * 100 + (buf[8] - '0') * 10 + (buf[9] - '0');
    printf("The entered day is %d, month is %d and year is %d\n", day, month, year);
    return 0;
}