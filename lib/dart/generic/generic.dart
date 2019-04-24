void main(){
  var utils=Utils<String>();
  utils.putElement("element");
  var utils2=Utils2();
  utils2.putElement(1);
  utils2.putElement<String>("2");
}
//泛型使用在类上
class  Utils<T>{
  T element;
  void putElement(T element){
    this.element=element;
    print(element);
  }
}
//泛型使用在方法上
class Utils2{
  void putElement<T>(T element){
    print(element);
  }
}
