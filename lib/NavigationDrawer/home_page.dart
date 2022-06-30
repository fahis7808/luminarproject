import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:luminarproject/NavigationDrawer/add_lead_page.dart';
import 'package:luminarproject/NavigationDrawer/points_page.dart';
import 'package:luminarproject/NavigationDrawer/points_redemption_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage() ,
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}
class HomePageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Navigation Drawer",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: ListView(
            children: [
              Center(
                child: GestureDetector(
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("asset/image/mypic.jpeg"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 4),
                child: const Text("Fahis up ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 8),
                child: const Text(" afup7808@gmail.com ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 12,left: 25,right: 25,bottom: 13),
                child: OutlinedButton(onPressed: (){},
                    child: const Text("SIGN OUT",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))
                  ),
                ),
              ),
              drawerCard(icon1: Icons.one_x_mobiledata_outlined, text1: "Add Lead", onTap1: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>AddLeadPage()));
              }),
              drawerCard(icon1: Icons.star, text1: "Points Redemption", onTap1: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>PointsRedemption()));
              }),
              drawerCard(icon1: Icons.plus_one, text1: "Points", onTap1: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>PointsPage()));
              }),
              drawerCard(icon1: Icons.person, text1: "Profile", onTap1: (){}),
              drawerCard(icon1: Icons.dashboard, text1: "Dashboard", onTap1: (){}),
              drawerCard(icon1: Icons.home, text1: "Home", onTap1: (){}),
              Divider(thickness:1.0,
              color: Colors.white,),
              Container(
                padding: EdgeInsets.only(top: 6,left: 16),
                child: const Text("Communicate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
                ),
              ),
              drawerCard(icon1: Icons.lock, text1: "Privacy Policy", onTap1: (){}),
              drawerCard(icon1: Icons.call, text1: "Contact Us", onTap1: (){}),
              drawerCard(icon1: Icons.lock, text1: "About App", onTap1: (){})
            ],
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network("2wCEAAoHCBUVFRIRFRUSEhIREhEREREREREQDxERGBQZGRgUGBgcIS4lHB4rHxgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHjQhJCs0NDE0NDQ0NDQ0NDQxNDQ0NDE0NDE0NDQ0NDQ0NDQxNDYxMTQ0NDQ0NDQ0NDQ0NDQxNP",
            fit: BoxFit.fill,
              height: 500,
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}


Widget drawerCard({

 required  IconData icon1,
 required  String text1,
 required  GestureTapCallback onTap1,

}){
  return ListTile(
  title: Row(
  children: [
    Icon(icon1,
    color: Colors.white,
    ),
    Padding(padding: EdgeInsets.only(left: 30),
    child: Text(text1,
    style: TextStyle(
      color: Colors.white,
      fontSize: 13
    ),
    ),
  ),
],
  ),
    onTap: onTap1,
  );
}
