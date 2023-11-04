// import 'package:flutter/material.dart';

// class HomePageFull extends StatefulWidget {
//   const HomePageFull({super.key});

//   @override
//   State<HomePageFull> createState() => _HomePageFullState();
// }

// class _HomePageFullState extends State<HomePageFull> {
//   int count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Less Widget'),
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Card(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 150,
//                 vertical: 20,
//               ),
//               child: Text(
//                 'San: $count',
//                 style: TextStyle(fontSize: 24),
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   count--;
//                   print(count);
//                   setState(() {});
//                 },
//                 child: Icon(Icons.remove),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   count++;
//                   print(count);
//                   setState(() {});
//                 },
//                 child: Icon(Icons.add),
//               )
//             ],
//           )
//         ]),
//       ),
//     );
//   }
// }
