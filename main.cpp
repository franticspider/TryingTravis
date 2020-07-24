#include <stdio.h>




void functionthatfails(){

	int array[3];
  int otherarray[2];

  //This should segfault
  array[3] = 4;
  otherarray[0]=5;
}


int main(){


	printf("Hello, world!\n");

  functionthatfails();


	printf("Finished functionthatfails \n");
}
