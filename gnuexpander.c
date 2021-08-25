#include <stdio.h>
#include <string.h>

//Expands the GNU recursive acronym to i number of times

int main(void){
  int i;
  int c;
  printf("Input how many GNU expanions you want: \n");
  scanf( "%d", &i);
  printf("GNU's ");
  for (c = i; c > 0; c = c-1){
	  printf("not Unix ");
  }
  printf("\n");
}
