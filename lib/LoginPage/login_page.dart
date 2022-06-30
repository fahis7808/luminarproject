import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 220,
            width: 411,
            decoration: const BoxDecoration(
                color: Color(0xEBE0811C),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 50,right: 30) ,
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
      TextField(
          decoration: InputDecoration(
             filled: true,
             fillColor: Colors.red,
             hintText: "Email",
             contentPadding:   EdgeInsets.only(left: 14.0, bottom:0 , top: 14),
             focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.white),
             borderRadius: BorderRadius.circular(50),
              ),
            prefixIcon: Icon(Icons.mail,color: Colors.grey,),
            ),
          ),
        ],
      ),
    );
  }
}