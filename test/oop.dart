import 'lib/Person.dart';

void main () {
  var person = new Person('zhaoyiming', 18);
  person.printInfo();
  print(person.myAge);

  var person0 = new Person('Tom', 18);
  print('~~~~~~~~~~~~~~');
  person0..myAge..name = 'zhangsan'..printInfo();
  print('~~~~~~~~~~~~~~');

  person.myAge = 17;
  print(person.myAge);
  print(person.age);

  // var person2 = new _Person();

  var personWithName = new Person.withName('zhaoyiming');
  print(personWithName.name);

  // 报错
  // const person3 = new Person3('zhaoyiming', 18, 'man');
  const person3 = const Person3('zhaoyiming', 18, 'man');
  var person3_1 = new Person3('zhaoyiming', 18, 'man');
  print('---------');
  var person4 = new Person4('zhaoyiming');
  print(person4.name);
  print('-------');
  var person4_1 = new Person4('zhaoyiming');
  Person4.printInfo();

  var person5 = new Person5({
    "name": "zhangsan",
    "age": 18,
    "sex": "man"
  });
  print(person5.sex);

  // 一般不建议使用对象call方法
  print('person5 call: ${person5(1, 2)}');

  if (person is Person5) {
    print('person is Person5');
  } else if (person3_1 is! Person5) {
    print('person3_1 is not Person5');
  } else {
    print('person is not Person5');
  }
}
