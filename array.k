//MWAURA CYRUS NGIGI
//ENE212-0060/2021

#include <stdio.h>

void arrangeArray(int arr[], int size) {
    for (int i = 0; i < size - 1; i++) {
        for (int j = i + 1; j < size; j++) {
            if (arr[i] > arr[j]) {
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

int main() {
    int arr[9] = {9, 3, 7, 2, 6, 5, 1, 8, 4};
    int size = 9;

    // Print original array
    printf("Original Array:\n");
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
// Arrange the remaining numbers from smallest to largest
    arrangeArray(arr, size);

    // Prompt the user to enter the position of the number to omit
    int position;
    printf("Enter the position of the number to omit (1-9): ");
    scanf("%d", &position);

    // Validate the position
    if (position < 1 || position > size) {
        printf("Invalid position. Position should be between 1 and 9.\n");
        return 1;
    }

    // Omit the number at the specified position
    int omit = arr[position - 1];
    for (int i = position - 1; i < size - 1; i++) {
        arr[i] = arr[i + 1];
    }
    size--;

    // Print array after omission
    printf("Array after omitting %d:\n", omit);
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    // Arrange the remaining numbers from smallest to largest
    arrangeArray(arr, size);

    // Print the sorted array after deletion
    printf("Array after deleting %d and sorting:\n", omit);
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}
