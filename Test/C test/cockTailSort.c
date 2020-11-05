#include <stdio.h>
int temp;

void cocktail(int a[], int n)
{

    int is_swap = 1;
    int begin = 0, i;
    int end = n - 1;

    while (is_swap)
    {
        is_swap = 0;

        for (i = begin; i < end; ++i)
        {
            if (a[i] > a[i + 1])
            {
                temp = a[i];
                a[i] = a[i + 1];
                a[i + 1] = temp;
                is_swap = 1;
            }
        }

        if (!is_swap)
            break;

        is_swap = 0;

        for (i = end; i >= begin; --i)
        {
            if (a[i] > a[i + 1])
            {
                temp = a[i];
                a[i] = a[i + 1];
                a[i + 1] = temp;
                is_swap = 1;
            }
        }

        begin++;
    }
}

int main(void)
{
    int arr[] = {2, 4, 5, 3, 1, 10, 6, 9};
    int size = sizeof(arr) / sizeof(arr[0]);
    cocktail(arr, size);

    printf("print sorted array....");
    for (int i = 0; i <= size; i++)
    {
        printf("%d", arr[i]);
        printf("\n");
    }

    return 0;
}