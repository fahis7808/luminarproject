import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyScreen());

}

class MyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(primarySwatch: Colors.grey),
     home: HomeScreen(),
   );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Row(
    children: [
    Text("click 1"),
    Icon(Icons.cached),
    Text("click 1"),
    Icon(Icons.warning),
    ],
    ),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Button"))
          ],
        )
    ],
    );
  }
}