// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController n1controller = TextEditingController();
    String result=''; 
    var n2controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    
        return Scaffold(    
          body: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 TextField(controller:n1controller ,keyboardType: TextInputType.number,)
                 ,TextField(controller: n2controller,keyboardType: TextInputType.number,),
                 ElevatedButton(
  onPressed: () {
    // Add your button press logic here  
    String value=n1controller.text;
    result='The value of 1st controller is $value';
    setState(() {  });
  },
  child: const Text('Submit'),
),
                 Text("Result is $result"),
              ],
            ),
          )
    );
  }
}