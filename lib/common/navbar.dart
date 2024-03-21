import 'package:flutter/material.dart';
import 'package:f1_prototype_1/screens/MyHomePage.dart';
import 'package:f1_prototype_1/screens/statefulwidgettest.dart';

class navbars extends StatelessWidget {
  const navbars({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Drawer(backgroundColor:Color.fromARGB(255, 235, 92, 92),
    child: ListView(children: buildnavbar(context)
    ,)
    ,);
  }

  List<Widget> buildnavbar (BuildContext context)
  {
    List<Widget> menuItems= [];
    menuItems.add(const DrawerHeader(child: Text('F1 MotorSports', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
    ));

    final Set<String> menuTitles={ //set will be in capital S
      "Home",
      "Cars",
      "Races",
      "News"
    };
    menuTitles.forEach((element) {
      menuItems.add(ListTile(
        title: Text(element,
        style: const TextStyle(fontSize: 20),),
        onTap: () {
          Widget screen = Container();
          switch (element) {
            case 'Home': screen= const MyHomePage();
            break;
            case 'Cars': screen =const MyHomePage();
            break;
            case 'Races': screen =const MyHomePage();
            break;
            case 'News': screen = const calculator();
            break;
            
            default:

           
          }
           Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
     });
    return menuItems;
  }
}