import 'package:flutter/material.dart';
import 'package:f1_prototype_1/common/navbar.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GCU Application"),
        backgroundColor: Color.fromARGB(255, 255, 68, 68),
      ),
      drawer: const navbars(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        
         child: Center(
            child: Container(
                padding: const EdgeInsets.all(20),  //edge inset is like padding we are giving padding to a container 
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(179, 0, 0, 0)),
                child: const Text(
                  "F1 Motor Sports!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),

                ))),
      ),
    );
  }
}