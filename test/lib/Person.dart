class Person {
  // 属性默认回生成 get 和 set 方法
  // 通过 final 关键字生成的属性是只读的
  String name;
  int age;
  // final 属性的赋值需要在构造方法之前执行
  final String sex = 'man';

  Person (String name, int age) {
    this.name = name;
    this.age = age;
    // this.sex = 'man';
  }

  // 构造方法不能重载
  // Person (String name) {}

  // 使用命名构造方法，可以实现多个构造方法
  Person.withName (String name) {
    this.name = name;
  }

  // 使用这种语法糖，可以给 final 属性赋值
  // 在构造方法执行之前就执行了赋值操作
  // 所以实例化类的时候，可以给 final 参数传值
  // Person (this.name, this.age, this.sex);

  // 如果没有构造方法，则会有一个默认的构造方法

  void printInfo () {
    print('name: ${this.name}, sex: ${this.sex}');
  }

  int get myAge {
    return age;
  }

  void set myAge (value) {
    this.age = value;
  }
}

// 以 _ 开头的类、类属性、类方法，只在当前文件中可用，其他文件不能引用
class _Person2 {
  String _name;
  int age;
  final String sex = 'man';

  void printInfo () {
    print('sex: ${this.sex}');
  }
}

class Person3 {
  final String name;
  final int age;
  final String sex;

  const Person3 (this.name, this.age, this.sex);
}

class Person4 {
  String name;
  // final static 报错
  // final static Map<String, Person4> _cache = <String, Person4>{};
  static final Map<String, Person4> _cache = <String, Person4>{};

  // 工厂构造方法
  factory Person4 (String name) {
    print('this is a factory constructor');
    if (_cache.containsKey(name)) {
      print('this name has existed');
      return _cache[name];
    }
    return (_cache[name] = Person4._internal(name));
  }

  Person4._internal (this.name);

  static printInfo () {
    print('_cache: ${Person4._cache}');
  }
}

class Person5 {
  String name;
  int age;
  final sex;

  // 初始化列表，将在构造函数执行前执行
  // 其最大的作用是可以给 final 属性赋值
  Person5 (Map map): this.age = map['age'], this.sex = map['sex'] {
    this.name = name;
  }

  // 一般不建议使用对象call方法，会把代码变得复杂
  int call (int a, int b) {
    return a + b;
  }
}