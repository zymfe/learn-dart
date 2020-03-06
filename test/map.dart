void main () {
  var person = {
    "name": "zhaoyiming",
    "age": 18
  };
  print(person);
  
  print([1, 2, 3].runtimeType); // List<int>
  print(true.runtimeType); // bool
  print(person['name']);
  // print(person.age); // 语法错误

  const person2 = {
    "1": 1,
    "2": 2,
    3: 3
  };
  print(person2);
  print(person2['1']);  // 1
  print(person2['3']); // null
  print(person2['100']); // null

  print(person.keys.length); // 2
  print(person.values);
  person.keys.forEach(print);

  print(person.containsKey('name')); // true
  print(person.containsKey('sex')); // false
  print(person.containsValue(18)); // true
  
  print(person.remove('age')); // 18
  print(person);

  person.forEach((key, value) {
    print('${key}: ${value}');
  });

  print([1, 200, 3].asMap()); // {0: 1, 1: 200, 2: 3}
}