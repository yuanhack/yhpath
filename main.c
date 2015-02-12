#include <stdio.h>

#include "yhpath.h"

int main(int argc, char **argv)
{
    char buff[32];
    char errinfo[128];
    propath(buff, sizeof(buff), errinfo, sizeof(errinfo));
    printf("%s\n", buff);
    return(0);
}

