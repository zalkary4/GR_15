void main() {
  salamBer('Flutter course');
  salamBer2('w');
  salamBer3();
  salamBer3('Osdh');
  // jetiAta(bir: bir, eki: eki, uch: uch, tort: tort, besh: besh, alty: alty, jeti: jeti,)
}

void salamBer(String name) {
  print('This is $name');
}

void salamBer2(String? name) {
  print('This is $name');
}

void salamBer3([String? name = 'dart']) {
  print('This is $name');
}

void jetiAta({
  required String bir,
  required String eki,
  required String uch,
  required String tort,
  required String besh,
  required String alty,
  required String jeti,
}) {
  print('1, 2, 3, 4, 5, 6, 7');
}
