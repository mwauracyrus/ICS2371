//Mwaura Cyrus Ngigi
// ENE212-0060/2021

#include <stdio.h>
int main(){
    double a,b,summation,subtraction;
    char operator;

    printf("\nInput first number:");
    scanf("%lf", &a);

    printf("\nInput second number:");
    scanf("%lf", &b);

    summation=a+b;
    subtraction=a-b;

    printf("\nThe summation of the numbers is: %lf", summation);
    printf("\nThe subtraction of the numbers is: %lf", subtraction);
    printf("\nThe summation of the numbers is: %lf and The subtraction of the numbers is: %lf", summation, subtraction);
    return 0;
}
