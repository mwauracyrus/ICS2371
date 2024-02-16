//MWAURA CYRUS NGIGI
//ENE212-0060/2021

#include <stdio.h>
#include <math.h>

int main() {
    double num1, num2;
    char operator;

    printf("Enter the first number: ");
    scanf("%lf", &num1);

    printf("Enter the operator: ");
    scanf(" %c", &operator); 

    printf("Enter the second number: ");
    scanf("%lf", &num2);

    double result;
    switch (operator) {
        case '+':
            result = addition(num1, num2);
            printf("Sum is: %lf\n", result);
            break;

        case '-':
            result = subtraction(num1, num2);
            printf("Difference is: %lf\n", result);
            break;

        case '/':
            result = division(num1, num2);
            printf("Division is: %lf\n", result);
            break;

        case '*':
            result = multiplication(num1, num2);
            printf("Product is: %lf\n", result);
            break;

        case '%':
            result = modulo(num1, num2);
            printf("Remainder is: %lf\n", result);
            break;

        default:
            printf("Invalid operator\n");
            break;
    }
    return 0;
}

