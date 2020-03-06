// Dart 中没有多继承的概念
// 但是可以使用 mixins 实现同样的效果
// 作为 Mixin 的类不能有显示的构造方法
// 作为 Mixin 的类只能继承自 Object
void main () {
  var d = new D();
  d.printA(); // B.A
  d.printB();
  d.printC();
}

class A {
  printA () {
    print('A.A');
  }
}

class B {
  printA () {
    print('B.A');
  }
  printB () {
    print('B');
  }
}

class C {
  printC () {
    print('C');
  }
}

class D extends A with B,C {

}