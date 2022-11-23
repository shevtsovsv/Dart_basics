void main() {
  int number = 3;
  print(number);
  num number2 = 2.0;
  print(number2);
  double number3 = 3;
  print(number3);
  String str = 'Uladzimir';
  print(str);
  final list = [1, 2, 3];
  print(list);
  final map = {1: 'one', 2: 'two', 3: 'three'};
  final mapValue = map[2];
  print(mapValue);
  Set<int> set1 = {1, 2, 3, 5};
  set1.add(2);
  Runes runes = Runes('\u041F\u0440\u0438\u0432\u0435\u0442');
  print(String.fromCharCodes(runes));
  Symbol libName = #foo_lib;
  print(libName);
}
