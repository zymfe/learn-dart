// 枚举是一个有穷序列集的数据类型
// 常用语代替常量、控制语句等
enum OrderType {
  A,
  B,
  C,
  D
}

void main () {
  print(OrderType.values); // [OrderType.A, OrderType.B, OrderType.C, OrderType.D]
  print(OrderType.A.index); // 0
  
  const type = OrderType.B;
  switch (type) {
    case OrderType.A:
      print('A');
      break;
    case OrderType.B:
      print('B');
      break;
    default:
      print('other');
  }
}