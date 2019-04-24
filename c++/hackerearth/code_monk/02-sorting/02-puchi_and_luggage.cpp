/*
Puchi hates to carry luggage, but unfortunately he got a job to carry the luggage of his N friends in office. Each day, one of his N friends, gives him the luggage of a particular weight to carry. You will be given the weight of luggage of each friend in the array Weight, where Weighti is the weight of luggage of ith friend carried by Puchi on ith day. It is given that all the luggages carried by Puchi are distinct in their weights. 
As Prateek assigned this job to Puchi, so for each day, he wants to know the number of days in future when Puchi will have to carry the luggage , having weight less than the weight of luggage of current day.
Please help Prateek for the same.

Input:
The first line contains a single integer T, denoting the number of test cases. In each test case, the following input will be present: 
First line contains an integer N, where N represents the number of friends.
Next N line contains N integers, where ith line contains ith integer, which represents Weighti.

Output:
Output exactly T lines. Each line contains N integer separated by a space, where ith integer represents the number of luggage of future, which are less than the weight of luggage of the current day.
*/

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
using namespace std;

void test();
void counting_sort (int A[], int Aux[], int n);

int main() {
    int T;
    cin >> T;

    for (int i = 0; i < T; i++) {
        test();
        cout << "\n";
    }

    return 0;
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

int * intdup(int const * src, int len) {
    int * p = (int *) malloc(len * sizeof(int));
    memcpy(p, src, len * sizeof(int));
    return p;
}

void counting_sort (int A[], int Aux[], int n) {
    cout << "PRIMA\n";
    quick_sort(A, n);
        cout << "DOPO\n";
    int max1 = A[n - 1];
    cout << max1;
    // initialize the elements of array with 0 .
    for(int i = 0 ; i <= max1 ; i ++ ) 
        Aux[ i ] = 0 ;
    
    /*
     * stores the frequencies of each distinct element of A[ ],by
     * mapping its value as the index of Aux[ ] array.
     */
    for( int j = 0; j < n ;j++ ) 
        Aux[ A [ j ] ] ++ ;
    
    /*
     * Calculates how many elements are less than or equal to i by  
     * running sum of  Aux array. 
     */
    for(int i = 1; i <= max1 ;i++ )      
        Aux [ i ] = Aux[ i ] + Aux [ i-1 ];
    //places each element of A[ ] at its correct position int Out [ ] array.
    for (int j = n-1 ; j >= 0 ; j--) {
        //Out[ Aux[ A[ j ] ]-1] = A[ j ];            
        Aux[A[ j ] ] = Aux[ A[ j ]] -1; 
    }
}

void test() {
    int N;
    cin >> N;
    int weight[N];
    int aux[N];
    int result[N];

    for (int i =0; i < N; i++) {
        cin >> weight[i];
        aux[i] = weight[i];
    }

    counting_sort(aux, result, N);
    /*
    for (int i = 0; i < N; i++) {
        int count = 0;
        for (int j = i + 1; j < N; j++) {
            if (weight[j] < weight[i]) {
                count++;
            }
        }
        result[i] = count;
    }
    */

    for (int i = 0; i < N; i++) {
        cout << result[i] << " ";
    }
}
