class Test {
  Test(
      {required this.questionText,
      required this.variant1,
      required this.variant2,
      required this.variant3,
      required this.variant4});
  final String questionText;
  final Variant variant1;
  final Variant variant2;
  final Variant variant3;
  final Variant variant4;
}

class Variant {
  const Variant({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}
