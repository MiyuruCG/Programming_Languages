#include <iostream>
#include <string>

using namespace std;

class Book
{
private:
    int bookID;
    std::string bookName;
    std::string ISBN;

public:
    int GetBookID();
    std::string GetBookName();
    std::string GetISBN();
    void SetBookID(int);
    void SetBookName(std::string);
    void SetBookISBN(std::string);
    Book();
    ~Book();
};

int main()
{

    Book b1;

    b1.SetBookID(20);
    b1.SetBookISBN("bn1");
    b1.SetBookName("this book");
}