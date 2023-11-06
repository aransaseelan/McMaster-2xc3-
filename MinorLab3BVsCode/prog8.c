#include <stdio.h>

int main() {
  char buf[500];
  int i, j, n;
  int day, month, year;

  printf("Enter date in the format DAY/MONTH/YEAR ");
  scanf("%s",buf);

  /* find first / */
  for(i=0; ! (buf[i]=='\0' || buf[i]=='/'); i++);
  if (buf[i] == '\0') {
    printf("incorrect format 1\n");
    return 0;
  }
  if (i == 0) {
    printf("incorrect format 2\n");
    return 0;
  }else if (i == 1) {
    if (buf[0] < '0' || buf[0] > '9') {
      printf("incorrect format 3\n");
      return 0;
    }
    day = buf[0]-'0';
  }else if (i == 2) {
    if (buf[0] < '0' || buf[0] > '9') {
      printf("incorrect format 4\n");
      return 0;
    }
    if (buf[1] < '0' || buf[1] > '9') {
      printf("incorrect format 5\n");
      return 0;
    }
    day = 10*(buf[0]-'0')+(buf[1]-'0');
  }else{
    printf("incorrect format 6\n");
    return 0;
  }
  j = i+1;  // eat first /

  /* find second / */ 
  for(i=j; ! (buf[i]=='\0' || buf[i]=='/'); i++);
  if (buf[i] == '\0') {
    printf("incorrect format 7\n");
    return 0;
  }
  if (i == j) {
    printf("incorrect format 8\n");
    return 0;
  }else if (i == j+1) {
    if (buf[i-1] < '0' || buf[i-1] > '9') {
      printf("incorrect format 9\n");
      return 0;
    }
    month = buf[i-1]-'0';
  }else if (i == j+2) {
    if (buf[i-2] < '0' || buf[i-2] > '9') {
      printf("incorrect format 10\n");
      return 0;
    }
    if (buf[i-1] < '0' || buf[i-1] > '9') {
      printf("incorrect format 11 [%c]\n",buf[i-1]);
      return 0;
    }
    month = 10*(buf[i-2]-'0')+(buf[i-1]-'0');
  }else{
    printf("incorrect format 12\n");
    return 0;
  }
  i++;  /* eat second / */

  if (buf[i] == '\0') {
    printf("incorrect format 13\n");
    return 0;
  }
  year = 0;
  for(  ; buf[i] != '\0'; i++) {
    if (buf[i] < '0' || buf[i] > '9') {
      printf("incorrect format 14\n");
      return 0;
    }
    year = 10*year+buf[i]-'0';
  }

  printf("day=%d,month=%d,year=%d\n",day,month,year);
  
  return 0;
}