using System;

public static class JadenCase {

  public static string recursive(string input, string output, int i){
    if(input.Length == output.Length){
      return output;
    }
    if(i == 0){
      return recursive(input, output + Char.ToUpper(input[i]), i + 1);
    }
    if(input[i] == ' '){
        return recursive(input, output + ' ' + Char.ToUpper(input[i + 1]), i + 2);
    }else{
        return recursive(input, output + input[i], i + 1);
    }
  }

  public static string ToJadenCase(this string phrase) {
    return recursive(phrase, "", 0);
  }

  public static void Main(){
    Console.WriteLine(ToJadenCase("guacamole con tostaditas y cebolla"));
  }

}
