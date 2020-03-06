import 'Person.dart';

class Student extends Person {
  String name;
  int age;
  final String sex;

  // 父类构造方法在子类构造方法开始执行的位置被调用
  // 初始化列表只能放在父类构造方法的前边
  Student (String name, int age, String sex): this.sex = sex, super.withName(name) {
    print('init Student Constructor');
  }

  @override
  void printInfo () {
    print('My name is ${this.name}');
  }

  void printAge () {
    print('age=${this.age}');
  }

  static void printRandom () {
    print(2222);
  }
}

// 在 Dart 中，类可以当做接口来使用
// implements 要实现接口中的所有方法
// 如果当前类拥有所有已实现的可用的方法，用继承就行
class Student1 {
  String name;
  int age;

  void printName () {}

  void printAge () {}
}

class Student2 implements Student1 {
  String name;
  int age;

  @override
  void printName () {
    print('name: ${this.name}');
  }

  @override
  void printAge () {
    print('name: ${this.age}');
  }
}