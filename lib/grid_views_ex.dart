import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: GridEx(),
  ));
}

class GridEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.count(
          crossAxisCount:3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        children: List.generate(datas.length, (index){
          return Center(child: SelectCard(datas: datas[index]
          )
          );
        }),
      ),
    );

  }
}

class SelectCard extends StatelessWidget {
  MyWidget datas;

  SelectCard({Key? key, required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purpleAccent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Icon(
              datas.icon,
              size: 50,
            ),
            ),
            Text(datas.title,
            style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class MyWidget {
  String title;
  IconData icon;

  MyWidget({required this.title, required this.icon});
}

List datas = [
  MyWidget(title: "Settings", icon: Icons.settings),
  MyWidget(title: "Email", icon: Icons.email),
  MyWidget(title: "Phone", icon: Icons.phone),
  MyWidget(title: "Paste", icon: Icons.paste),
  MyWidget(title: "Copy", icon: Icons.copy),
  MyWidget(title: "Cancel", icon: Icons.cancel),
  MyWidget(title: "Cut", icon: Icons.cut),
];