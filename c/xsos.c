#include <stdbool.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "character.h"

int countCharacter(char c, char * str){
  int count = 0;
  for(int i = 0; i < strlen(str); i++){
    if(equalsIgnoreCase(str[i], c)){
      count = count + 1;
    }
  }
  return count;
}

bool xo (char * str) {
  int xs = countCharacter('x', str);
  int os = countCharacter('o', str);

  if(xs == os){
    return true;
  }else{
    return false;
  }
}
