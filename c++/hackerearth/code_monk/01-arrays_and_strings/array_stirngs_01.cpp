#include<stdio.h>
#include<iostream>

using namespace std;
int main() {
    int Arr[6] = {2, 3, 4, 5, 6, 7};
    char A [3][2] = {{'P', 'I'}, {'O', 'M'}, {'G','D'}};
    //Accessing and printing the 3rd element of the first array.
    printf("The third element of Arr is %d \n ",  Arr[2]);
    
    // Printing all the elements of Arr
    for (int i = 0; i < 6 ; i ++ )
        printf("%d ", Arr[i]);
    printf("\n");
    
    // Printing all the element of A[ ][ ] 
    printf("All the elements of 2D array A[][] are : \n");
    
    for( int i = 0 ; i < 3; i++ ) {
        for(int j= 0 ; j < 2 ; j++ ) {
            printf("%c ", A[i][j]);
        }
        printf("\n");
    }

    char b[10];
    scanf("%s", b);
    // segmentation fault if you insert a string longer than 10 long enough...
    printf("Inserted: %s\n", b);

    string str = "Hello!";
    // read even after the string!!!!!
    for (int i = 0; i < 80; i++) {
        printf("|%c|", str[i]);
    }
    printf("\n");

    string s1 = "ciao";
    string s2 = "addio";

    //cannot use printf with class string!
    cout <<"s1 = " << s1 << " s2 = " << s2 << "\n";

    //this copy the string, not the pointer to the object!
    s1 = s2;

    cout <<"s1 = " << s1 << " s2 = " << s2 << "\n";

    s2 = "arrivederci";

    cout <<"s1 = " << s1 << " s2 = " << s2 << "\n";

    /*
     * printf(s1)   //C
     * cout << s1   //C++
     *
     * scanf    //C
     * cin >> s1  //C++
     *
     * strcpy(s1, s2);  //C
     * s1 = s2; //C++
     *
     * strlen(s1);  //C
     * s1.size();   //C++
     *
     * strcat(s1, s2);  //C
     * s1 += s2;    //C++
     *
     * strcmp(s1, s2);  //C
     * s1 == s2 //C++
     *
     * s1.c_str();  //make a C++ string to a C string
     */

    return 0;
}
