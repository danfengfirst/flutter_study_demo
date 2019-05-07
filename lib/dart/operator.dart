void main() {
  var a = 20;
  a ??= 10;
  print(a);

  var b ;
  b ??= 10;
  print(b);

  var d=40;
  int c=d??a;
  print(c);
  var e;
  c=e??a;
  print(c);

}
