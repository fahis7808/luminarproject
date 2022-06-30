import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ListWithBuilder(),
  ));
}

class ListWithBuilder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ListWithBuilderState();
}

class ListWithBuilderState extends State {

  List<String> images = [
    "asset/image/dubai.png",
    "asset/image/Chinawl.png",
    "asset/image/tajmahal.png",
    "asset/image/lotus.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Third List"),
    ),
      body: ListView.builder(
          itemBuilder:(context , index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
                title: Text("second tile"),
              ),
            );
          },
        itemCount: images.length,
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}