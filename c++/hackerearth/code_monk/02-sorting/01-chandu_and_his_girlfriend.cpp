/*
Chandu's girlfriend loves arrays that are sorted in non-increasing order. Today is her birthday. Chandu wants to give her some sorted arrays on her birthday. But the shop has only unsorted arrays. So, Chandu bought T unsorted arrays and is trying to sort them. But, he doesn't have much time to sort the arrays manually as he is getting late for the birthday party. So, he asked you to write a program to sort the T arrays in non-increasing order. Help him, or his girlfriend will kill him.

Input:
First line contains an integer T, denoting the number of test cases.
First line of each test case contains an integer N, denoting the size of the array.
Second line contains N space separated integers, denoting the array elements Ai.

Output: 
For each test case, print the sorted array in non-increasing order.

Constraints:
1 <= T <= 100
1 <= N <= 105
0 <= Ai <= 109

Sample Input(Plaintext Link)
2
5
2 5 2 4 3
5
5 4 2 3 1

Sample Output(Plaintext Link)
5 4 3 2 2
5 4 3 2 1
 */

#include <iostream>

void test();
void quick_sort (int *a, int n);
void swap(int A[], int i, int j);
void reverse(int A[], int n);
void print_array(int A[], int start, int end);

using namespace std;

int main() {
    int T;
    cin >> T;

    for (int i = 0; i < T; i++) {
        test();
    }
}

void test() {
    int N;
    cin >> N;
    int A[N];
    for (int i = 0; i < N; i++) {
        cin >> A[i];
    }

    quick_sort(A, N);
    reverse(A, N);
    print_array(A, 0, N);
}

void quick_sort (int *a, int n) {
    int i, j, p, t;
    if (n < 2)
        return;
    p = a[n / 2];
    for (i = 0, j = n - 1;; i++, j--) {
        while (a[i] < p)
            i++;
        while (p < a[j])
            j--;
        if (i >= j)
            break;
        t = a[i];
        a[i] = a[j];
        a[j] = t;
    }
    quick_sort(a, i);
    quick_sort(a + i, n - i);
}

void swap(int A[], int i, int j) {
    int temp = 0;
    temp = A[i];
    A[i] = A[j];
    A[j] = temp;
}

void reverse(int A[], int n) {
    for (int i = 0; i < n/2; i++) {
        swap(A, i, n - (i + 1));
    }
}

void print_array(int A[], int start, int end) {
    for (int i = start; i < end; i++) {
        cout << A[i] << " ";
    }
    cout << "\n";
}

