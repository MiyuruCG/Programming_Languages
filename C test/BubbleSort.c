#include <stdio.h>

void printArr(int arr[], int size){
    
    for(int i =0; i<size; i++){
        printf("%d, ", arr[i]);
    }
    printf("\n");
}

int main(void){

    printf("Hello World \n");
    int num[] = {64, 34, 25, 12, 22, 11, 90}; 

    int n = sizeof(num)/sizeof(num[0]);

    printArr(num, n);
    for(int i = 0; i < n; i++){
        int val;
        for(int j = 0; j < n-1; j++){
            val = num[j];
            if(val > num[j + 1]){
                num[j] = num[j+1];
                num[j+1] = val;
            }
        }
    }


    printArr(num, n);

    // printf("%d \n", n);
    // printf("%d", num[1]);


    return 0;
}