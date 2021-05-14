#include <stdio.h>

#include "include.h"

int main()
{
   int var = AddNumbers(1, 2);
   printf("%d\n", var);

   #ifdef DEBUG
   printf("Debug Enabled!\n");
   #endif /* DEBUG */
}