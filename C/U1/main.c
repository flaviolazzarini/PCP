#include <stdio.h>

void printNumbersGoto(int i);

void printNumbersFor(int n);

void printNumbersRecursiveFunction(int i);

int main() {
    printNumbersGoto(7);
    printf("= printNumbersGoto(7)\n");
    printNumbersFor(7);
    printf("= printNumbersFor(7)\n");
    printNumbersRecursiveFunction(7);
    printf("= printNumbersRecursiveFunction(7)\n");
    return 0;
}

void printNumbersRecursiveFunction(int n) {
    if(n != 0){
        printNumbersRecursiveFunction(n-1);
    }
    printf("%i ", n);
}

void printNumbersFor(int n) {
    int counter = 0;
    while (counter <= n) {
        printf("%i ",counter);
        counter ++;
    }
}

void printNumbersGoto(int n) {
    int counter = 0;
    label:    printf("%i ",counter);
    counter ++;
    if(counter <= n){
        goto label;
    }
}