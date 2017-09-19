bool equals(char c, char d){
  return c == d;
}

bool equalsIgnoreCase(char c, char d){
  c = tolower(c);
  d = tolower(d);
  return c == d;
}
