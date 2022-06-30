import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: SearchResultPage1(),
  ));
}

class SearchResultPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF97C918),
        centerTitle: true,
        title: const Text("Search Result",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),

      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              height: 40,
              color: Color(0xFF97C918),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search",
                  contentPadding:   EdgeInsets.only(left: 14.0, bottom: 10, top: 8.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.arrow_back),
                  suffixIcon: Icon(Icons.tune_sharp ),


                ),
              ),
            ),
            SizedBox(height: 30,),

            imageCard(image: "asset/image/emma.jpg"),
            SizedBox(
              height: 10,
            ),
            imageCard(image: "asset/image/gustav.jpg"),

          ],
        ),
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



Widget imageCard({
  required String image,
}){

  return
    Card(
      margin: EdgeInsets.only(left: 20,right: 20),
      elevation: 15,
      child: Container(
        height: 250,
        child: ListView(
            children: [ Row(
              children: [

                Container(
                  margin: EdgeInsets.only(left: 10,right: 20,top: 70),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(image,
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),

                Column(
                  children: const [
                    SizedBox(height: 60,),
                    Text("Lorem ipsum",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,),

                    ),
                    SizedBox(height: 10,),
                    Text("Lorem ipsum dolor sit armet, \nconseter sadpiter eiter.sed"),
                  ],
                ),
              ],
            ),
              SizedBox(
                  height: 40),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  btnOne(btntxt: "PROFILE", txtcolor: Colors.black, bgcolor: Color(
                      0xFFDDEEAB)),
                  SizedBox(
                    width: 10,
                  ),
                 btnOne(btntxt: "HIRE", txtcolor: Colors.white, bgcolor: Color(0xFF97C918))
                ],
              ),
            ]
        ),

      ),
    );
}

Widget btnOne({
  required String btntxt,
  required Color txtcolor,
  required Color bgcolor
}){
  return  ElevatedButton(
    onPressed: (){},
    child: Text( btntxt,
      style: TextStyle(
        color: txtcolor,
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
    ),
    style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all(bgcolor),
        padding: MaterialStateProperty.all(
            EdgeInsets.only(
              left: 50,right: 50,
            ))
    ),
  );
}

Widget searchBar(){

  return TextField(
    cursorColor: Colors.grey,
    decoration: InputDecoration(
      hintText: "Search..."
    ),
  );
}