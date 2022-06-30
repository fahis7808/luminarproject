import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: SignUPPage1()));
}

class SignUPPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xFF97C918),
        centerTitle: true,
        title: const Text("SIGN UP",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            child: IconButton(onPressed: () {}, icon: const Icon( Icons.more_vert,color: Colors.black,)) ,
          ),
        ],
      ),
      body: ListView(

        children:[
          SizedBox(height: 20,),
          teacherCard(name: "I,m looking for a teacher",color: Color(0xFF97C918),textColor: Color(0xFFFFFFFF)),
          SizedBox(height: 10,),
          teacherCard(name: "I,m looking  a teacher",color: Color(0xFFECECEC)),
          SizedBox(height: 10,),
          teacherCard(name: "I,m looking for a teacher",color: Color(0xFFECECEC)),
    ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF97C918),
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_search),label: ""),
        ],
      ),
    );
  }
}


Widget teacherCard({
  
  required String name,
  required Color color,textColor,
}){

  return  Container(
    width: 150,
    margin: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5,),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
    ),
    height: 120,
      child: Center(
        child: Text(
          name ,
          style: TextStyle(
            color: textColor ,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
  );
}

  