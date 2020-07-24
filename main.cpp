#include <stdio.h>




void functionthatfails(){

	int array[3];

  //This should segfault
  array[3] = 4;
}


int main(){


	printf("Hello, world!\n");

  functionthatfails();
}
