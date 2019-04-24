void main() {
  LogUtil.e();
}

class LogUtil {
  //类中的常量需要使用 static const 声明
  static const String defalut_msg="defalut_msg";
  static String msg = "error";

  //静态成员不能访问非静态成员
  static void e() {
    print(msg);
  }

//非静态成员可以访问静态成员
  void i() {
    print(msg);
  }
}
