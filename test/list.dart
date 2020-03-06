void main () {
  var list1 = [1, 2, 3];
  const list2 = [1, 2, 3];
  // const list3 = new List(3);
  var list3 = new List(3);
  print('${list1}, ${list2}, ${list3}');

  list3[0] = 100;
  list3[1] = 'hello';
  list3[2] = true;
  print(list3);
  print('list3[2]=${list3[2]}');

  // UnsupportedError (Unsupported operation: Cannot modify an unmodifiable list)
  // list2[1] = 200;
  // print(list2);

  print(list3.length);
  print(list3.indexOf(100)); // 0
  print(list3.lastIndexOf(1)); // -1
  print(list3.lastIndexOf(true)); // 2
  print(list3.first); // 100

  // print(list1.add('new'));

  list1.add(2);
  print(list1); // [1, 2, 3, 2]

  // The argument type 'String' can't be assigned to the parameter type 'int'
  // list1.add('new'); 

  print(list1.removeAt(0)); // 1
  print(list1); // [2, 3, 2]

  list1.insertAll(1, [100, 200]);
  print(list1); // [2, 100, 200, 3, 2]

  list1.insert(1, 1000);
  print(list1); // [2, 1000, 100, 200, 3, 2]

  list1.remove(1000);
  print(list1); // [2, 100, 200, 3, 2]

  list1.removeRange(0, 2);
  print(list1); // [200, 3, 2]

  print(list1.sublist(1)); // [3, 2]

  list1.addAll([100, 101, 102, 103, 104]);
  // list1.forEach(print);
  list1.forEach((element) {
    print(element);
  });
  list1.forEach(_print);

  list1.sort((a, b) {
    return a - b;
  });
  print(list1); // [2, 3, 100, 101, 102, 103, 104, 200]

  // ... more function
}

void _print (element) {
  print('_print: ${element}');
}