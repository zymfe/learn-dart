// 使用泛型
void main () {
  var utils1 = new Utils();
  utils1.put('a');
  print(utils1.element); // a
  utils1.put(1);
  print(utils1.element); // 1

  var utils2 = new Utils<int>();
  // utils2.put('2');// error
}

// class Utils {
//   int elementInt;
//   String elementString;

//   void putInt (int element) {
//     this.elementInt = elementInt;
//   }

//   void putString (String element) {
//     this.elementString = element;
//   }
// }

class Utils<T> {
  T element;
  
  put (T element) {
    this.element = element;
  }

  $put<K> (K element) {
    print(element);
  }
}