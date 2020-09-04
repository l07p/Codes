#ifndef HEAD1_H
#define HEAD1_H

class head1
{
private:
    /* data */
public:
    head1(/* args */);
    ~head1();
    inline const char* getText()
    {
        #ifdef DEF_RET_YES
            return "Yes, DEF_RET_1 is defined";
        #else
            return "No, DEF_RET_1 is NOT defined";
        #endif
    }
};

head1::head1(/* args */)
{
}

head1::~head1()
{
}

#endif