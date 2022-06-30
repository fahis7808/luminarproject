import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    home: BottomNavigat(),
  ));
}

class BottomNavigat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigatState();

  }

class BottomNavigatState extends State {
  List<Widget> datas =[
    Text('index 1 : Home'),
    Text('index 2 : Settings'),
    Text('index 3 : Copy'),
    Text('index 4 : Paste'),

  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: IndexedStack(
          index: selectedindex,
          children: datas,
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: selectfromdatas,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.copy),label: "copy"),
          BottomNavigationBarItem(icon: Icon(Icons.paste),label: "Paste")


        ],
      ),
    );
}

  void selectfromdatas(int index) {
    selectedindex = index;
    setState(() {

    });
  }
}