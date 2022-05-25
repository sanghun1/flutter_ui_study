class A {
  final key;

  A({this.key}) {
    print("A");
    print(key);
  }
}

class B extends A {
  B(var key) : super(key: key){
    // : 이니셜라이저 키워드
    print("B");
  }
}

void main() {
  B("cos");
}
