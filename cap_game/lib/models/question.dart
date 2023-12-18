class Test {
  const Test({
    required this.questionText,
    required this.imageUrl,
    required this.variant1,
    required this.variant2,
    required this.variant3,
    required this.variant4,
  });

  final String questionText;
  final String imageUrl;
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

const test1 = Test(
  questionText: 'Bishkek',
  imageUrl: 'https://www.photohound.co/images/1018113l.jpg',
  variant1: Variant(text: 'Kazakhstan'),
  variant2: Variant(text: 'Kyrgyzstan', isTrue: true),
  variant3: Variant(text: 'Korea'),
  variant4: Variant(text: 'Turkey'),
);


// class Test {
//   const Test({
//     required this.questionText,
//     required this.variant1,
//     required this.variant2,
//     required this.variant3,
//     required this.variant4,
//     required this.imgUrl,
//   });
//   final String questionText;
//   final String imgUrl;
//   final Variant variant1;
//   final Variant variant2;
//   final Variant variant3;
//   final Variant variant4;
// }

// class Variant {
//   const Variant({
//     required this.text,
//     this.isTrue = false,
//   });
//   final String text;
//   final bool isTrue;
// }

// final test1 = Test(
//   questionText: 'Bishkek',
//   imgUrl:
//       'https://tripplanet.ru/wp-content/uploads/asia/kyrgyzstan/bishkek/dostoprimechatelnosti-bishkeka.jpg',
//   variant1: const Variant(text: 'Kazahstan'),
//   variant2: const Variant(text: 'Kyrgyzstan', isTrue: true),
//   variant3: const Variant(text: 'Korea'),
//   variant4: const Variant(text: 'Turkey'),
// );

