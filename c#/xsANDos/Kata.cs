using System.Linq;
using System;

public static class Kata {

  public static bool equalsIgnoreCase(char c, char d){
    return Char.ToLower(c) == Char.ToLower(d);
  }

  public static int count(char c, string input) {
    int counter = 0;
    for(int i = 0; i < input.Length; i++){
      if(equalsIgnoreCase(c, input[i])){
        counter = counter + 1;
      }
    }
    return counter;
  }

  public static bool XO (string input) { 
    return count('x', input) == count('o', input);
  }

  static public void Main(){
    Console.WriteLine(XO("xxaoooOOabXXXb"));
  }

}
