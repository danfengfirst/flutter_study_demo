void main(){
  say('danfeng','something');
  say('danfeng','something','android');
}
String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  print(result);
  return result;
}