void main () {
  String str1 = 'hello world';
  String str2 = '''hello
                    Dart'''; // 三个引号表示换行字符串
  print(str2);

  String str3 = 'hello \n Dart';
  print(str3);

  String str4 = r'hello \n Dart';// 字符串前加 r，表示不转义
  print(str4);

  String str5 = 'This is my favorite language ';
  print(str5 + ', Yes');
  print(str5 * 3);
  print('1' == '2');
  print(str5[0]);
  print(str5[1]);
  print('a+b=${str5}'); // 插值表达式，与 JS 类似
  print('${str1 + str2}');
  print(str4.length);
  print(str4.isEmpty);
  print(str4.isNotEmpty);

  print(str4.contains('D'));
  print(str4.contains('d'));
  print(str4.substring(1, 4)); // ell
  print(str4.startsWith('a')); // 是否以某个字符开头
  print(str4.endsWith('t'));
  print(str4.indexOf('e'));
  print(str4.lastIndexOf('e'));
  print(str4.lastIndexOf('r'));
  print(str4.split(' '));
  print(str4.replaceAll('l', 'A'));
  print(str4.replaceRange(1, 4, 'xxx'));
} 