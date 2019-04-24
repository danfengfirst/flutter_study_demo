void main() {
  var currentLesson = Lesson.Java;
  switch (currentLesson) {
    case Lesson.Java:
      print("你在学习的是Java课程");
      break;
    case Lesson.PHP:
      print("你在学习的是PHP课程");
      break;
    case Lesson.HTML:
      print("你在学习的是HTML课程");
      break;
    case Lesson.PYTHON:
      print("你在学习的是PYTHON课程");
      break;
  }
  print(currentLesson.index);//Dart中枚举具有index属性
}
//不能设置初始值
//不能添加方法
enum Lesson { Java, PHP, HTML, PYTHON }
