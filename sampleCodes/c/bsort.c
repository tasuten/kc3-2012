/*
 * 複数行コメント
 */
#include <stdio.h>
#define LENGTH 10

void bubbleSort(int *data, int size);
void swap(int *a, int *b);

int main(int argc, char *argv[])
{
  int data[LENGTH] = {2, 3, 4, 1, 5, -20, 100, 200000, 1999, 0};
  int i;

  bubbleSort(data, LENGTH);

  /* 結果表示 */
  for (i = 0; i < LENGTH; i++) {
    printf("%d¥n", data[i]);
  }

  return 0;
}

void bubbleSort(int *data, int size) {
  int i, j;
  for (i = 0; i < size; i++) {
    for (j = 1; j < size - i; j++) {
      if (data[j-1] > data[j]) {
       swap(&data[j-1], &data[j]);
      }
    }
  }
}

void swap(int *a, int *b) {
  int tmp;
  tmp = *a;
  *a = *b;
  *b = tmp;
}
