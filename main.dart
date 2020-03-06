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

  int e = 1;
  int f = 2;
  print(e + f);
  print(e - f);
  print(e * f);
  print(e / f);
  print(e ~/ f); // 取整
  print(e % f); // 取余

  int g = 0;
  int h = 0;
  print(g/h); // NaN
  int i = g * h;
  print(i.isNaN); // false
  print(i.isEven); // true
  print(i.isOdd); // false
  print(i.isFinite); // true
  print(i.isFinite); // true

  // double j = e / f;
  num j = e / f;
  print(j.toString());
  print(j.ceil());
  print(j.floor());
  print(j.floorToDouble()); // 0.0
  print(j.round()); // 1
  print(j.roundToDouble()); // 1.0
  
}