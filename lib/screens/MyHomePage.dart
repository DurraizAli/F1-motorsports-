import 'package:flutter/material.dart';
import 'package:f1_prototype_1/common/navbar.dart';
// ignore_for_file: prefer_const_constructors
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.amber[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.person),
              ),
              Spacer(
                flex: 1,
              ),
              Text("Formula 1 Racing"),
              Spacer(flex: 22)
            ],
          ),
        ),
      ),
      drawer: const navbars(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(179, 0, 0, 0),
                  ),
                  child: const Text(
                    "F1 Motor Sports!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/car1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              //Here we will start the text alignment 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.only(top: 300,left: 40),
                  child: Text("History Repeats Itself!",
                  style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10,left: 40,right: 900),
                  child: Text("A motivation letter is a brief (usually one-page long) letter to the selection committee. In it, candidates have to present their reasons for choosing that specific institution and demonstrate how they may thrive within its system.",
                  style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 220, 214, 214)),),)
                ],//children is closed
              ),
            ),
          ],
        ),
      ),
    );
  }
}
