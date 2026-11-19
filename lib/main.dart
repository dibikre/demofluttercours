import 'package:flutter/material.dart';
import 'pages/accueil.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Accueil(),
    );
  }
}




// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyAPP());
// }

// class MyAPP extends StatelessWidget {
//   const MyAPP({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Test APP flutter',
//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Accueil',
//           style: TextStyle(
//             fontSize: 40,
//             color: Colors.blueAccent,
//           ),
//         ),
//         leading: const Icon(
//           Icons.home,
//           size: 40,
//           color: Colors.black,
//         ),
//         backgroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.all(30),
//           child: Column(
//             children: [
//               const Text(
//                 'Test stateless!!',
//                 style: TextStyle(
//                   fontSize: 40,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 40),
//               const Text(
//                 'Bonjour',
//                 style: TextStyle(
//                   fontSize: 35,
//                   color: Colors.indigo,
//                 ),
//               ),
//               const SizedBox(height: 35),
//               ElevatedButton(
//                 onPressed: () {
//                   print("Cliquee!!!");
//                 },
//                 child: const Icon(
//                   Icons.update,
//                   size: 35,
//                   color: Colors.lightBlue,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           print("Cliquee 2!!!");
//         },
//         child: const Icon(
//           Icons.backspace_rounded,
//           size: 35,
//         ),
//       ),
//     );
//   }
// }
