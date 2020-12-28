import 'dart:typed_data';

class BaseClass {
  BaseClass({this.data});
  final ByteData data;
  int get value => null;
}

class Class1 extends BaseClass {
  static const int VALUE = 0x01;
  Class1({ByteData data}) : super(data: data);
  @override int get value => VALUE;
}

class Class2 extends BaseClass {
  static const int VALUE = 0x02;
  Class2({ByteData data}) : super(data: data);
  @override int get value => VALUE;
}

class Class3 extends BaseClass {
  static const int VALUE = 0x03;
  Class3({ByteData data}) : super(data: data);
  @override int get value => VALUE;
}

class Class4 extends BaseClass {
  static const int VALUE = 0x04;
  Class4({ByteData data}) : super(data: data);
  @override int get value => VALUE;
}

class ClassResolver {
  ClassResolver._();

  static BaseClass resolveClass(int value, ByteData data) {
    var klass = BaseClass(data: data);
    switch(value) {
      case 0x100001: print("A"); klass = Class1(data: data); break;
      case 0x100000: print("B"); klass = Class2(data: data); break;
      case 0x110001: print("C"); klass = Class3(data: data); break;
      case 0x110000: print("D"); klass = Class4(data: data); break;
      default: throw Exception("Failed to resolve class.");
    }

    print("Z");
    print(klass.value); // <-- SEGV_MAPERR at this line
    return klass;
  }
}

void main() {
  var data = Uint8List.fromList([0, 1, 2, 3, 4]).buffer.asByteData();
  ClassResolver.resolveClass(0x100001, data);
  ClassResolver.resolveClass(0x100000, data);
  ClassResolver.resolveClass(0x110001, data);
  ClassResolver.resolveClass(0x110000, data);
}
