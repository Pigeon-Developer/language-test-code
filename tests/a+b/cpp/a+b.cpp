#include <iostream>
#include <sstream>
using namespace std;

int main() {
    string line;
    while (getline(cin, line)) {
        stringstream ss(line);
        int a, b;
        ss >> a >> b;
        cout << a + b << endl;
    }
    return 0;
}
