void main (List args) {
  // 方法也是对象，并且有具体的类型Function
  // 返回值类型，参数类型都可以省略
  // 箭头语法：=> exp 是 {return exp} 的简写，只适用于一个表达式
  // 如果存在固定参数，则固定参数必须在可选参数的前边
  // 可选参数可以有默认值
  print(args);
  print(getPerson('zhaoyiming', 18));
  // 实参与入参不需要一一对应
  printPersonInfo('zhaoyiming', sex: 'man', age: 18);
  // 实参与入参需要一一对应
  printPersonInfo2('zhaoyiming', 18);

  // 函数也可以作为另外一个函数的入参
  Function printPersonInfo2Copy = printPersonInfo2;
  printPersonInfo2Copy('zhaoyiming');

  listTimes(times);

  // 匿名函数可以赋值给变量
  var fn = (int a, int b) {
    return a + b;
  };
  print(fn(1, 2));

  void fn2 (fn(int a, int b)) {
    print(fn(100, 200));
  }
  fn2(fn);

  // 闭包
  int count = 0;
  void fn3 () {
    print(count++);
  }
  fn3(); // 0
  fn3(); // 1
  fn3(); // 2
  fn3(); // 3
}

// String getPerson (String name, int age) {
//   return 'name: ${name}, age: ${age}';
// }

// Map getPerson (String name, int age) {
//   return {
//     "name": "zhaoyiming",
//     "age": 18
//   };
// }

getPerson (name, age) => 'name: ${name}, age: ${age}';

void printPersonInfo (String name, {int age, String sex}) {
  print('name: ${name}, age: $age, sex: $sex');
}

void printPersonInfo2 (String name, [int age, String sex = 'man']) {
  print('name: ${name}, age: $age, sex: $sex');
}

// void listTimes (fn(String str)) {
//   String str = 'A';
//   print(fn(str));
// }

void listTimes (Function fn) {
  String str = 'B';
  print(fn(str));
}

String times (String str) {
  return str * 3;
}
