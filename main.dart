// main 方法是固定写法，它是程序入口
void main () {
  // 用 var 定义变量，
  var a = 123;
  var b;
  print(a); // 123
  print(b); // null
  a = 456;
  print(a);

  // final 和 const 是不一样的，后面面向对象详细学习
  
  final c = 'hello';
  print(c);
  
  const d = 'world';
  print(d);
}