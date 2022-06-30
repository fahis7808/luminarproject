import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainAxisOne(),
  ));
}

class MainAxisOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main axis alignment"),
      ),
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Container(
            color: Colors.red,
            child:  Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                BlueBox(),
                BlueBox(),
                BlueBox(),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlueBox(),
                BlueBox(),
                BlueBox(),
              ],
            ),
          ),
          Container(
            color: Colors.black54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BlueBox(),
                BiggerBox(),
                BlueBox(),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            child: Row(
              children: [
                BlueBox(),
                Flexible(
                    fit: FlexFit.loose,
                    flex: 1,
                    child: BlueBox()
                ),
                Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: BlueBox()
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class BiggerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all()
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        border: Border.all()
      ),
    );
  }
}