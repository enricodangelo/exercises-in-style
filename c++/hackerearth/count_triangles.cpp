#include <iostream>
using namespace std;

int main()
{
    int T;
    cin >> T;

    for (int i = 0; i < T; i++) {
        long n;
        cin >> n;
        cout << (n * 8) + ((i - 1) * 6) << "\n"; 
    }

    return 0;
}
