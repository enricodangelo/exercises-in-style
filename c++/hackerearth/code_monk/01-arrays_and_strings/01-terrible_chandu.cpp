/*
https://www.hackerearth.com/code-monk-array-strings/algorithm/terrible-chandu/
Chandu is a bad student. Once his teacher asked him to print the reverse of a given string. He took three hours to solve it. The teacher got agitated at Chandu and asked you the same question. Can you solve it?

Input:
The first line contains an integer T, denoting the number of test cases.
Each test case contains a string S, comprising of only lower case letters.

Output:
For each test case, print the reverse of the string S.

Constraints:

1 <= T <= 10
1 <= |S| <= 30

Sample Input(Plaintext Link)
     2
     ab
     aba

Sample Output(Plaintext Link)
     ba
     aba
*/

#include <iostream>
#include <string>

int main()
{
    using namespace std;

    int T;
    cin >> T;

    for (int i = 0; i < T; i++) {
        string s;
        cin >> s;
        for (int j = s.size() - 1; j >= 0; j--) {
            cout << s[j];
        }
        cout << "\0" << "\n";
    }

    return 0;
}
