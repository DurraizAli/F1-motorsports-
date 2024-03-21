import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'screens/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/background.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
        
//          child: Center(
//             child: Container(
//                 padding: const EdgeInsets.all(20),  //edge inset is like padding we are giving padding to a container 
//                 decoration: const BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(30)),
//                     color: Color.fromARGB(179, 0, 0, 0)),
//                 child: const Text(
//                   "F1 Motor Sports!",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),

//                 ))),
//       ),
//     );
//   }
// }


