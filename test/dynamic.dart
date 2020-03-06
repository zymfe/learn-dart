void main () {
  var list1 = [1, 2, 3];
  // list1.add('4'); // 不能添加字符串

  var list2 = new List<dynamic>();
  list2.add(1);
  list2.add(true);
  list2.add('2');
  print(list2); // [1, true, 2]

  dynamic list3 = [1, '2', false];
  print(list3); // [1, 2, false]
}