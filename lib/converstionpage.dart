import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ConversationPage(),
  ));
}

class ConversationPage extends StatelessWidget {
//   @override
//   State<StatefulWidget> createState() => ConversationPageState();
// }
//
// class ConversationPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Conversation",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
            child: OutlinedButton.icon(onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color(0xF1ECB7C3)
                ),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ))
              ),
              icon: const Icon(
                Icons.add,
                color: Colors.pink,
              ),
              label: const Text("ADD NEW",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children:  [
          CupertinoSearchTextField(
            padding: EdgeInsets.all(5),
            borderRadius: BorderRadius.all(Radius.circular(30),
            ),
          ),
          SizedBox(height: 5,),
          textTileCard(
              image: "asset/image/kriss.jpg",
              title1: "Kriss Benwat" ,
              subtitle1: "Good to know",
              date: "Today"),
          textTileCard(
              image: "asset/image/Rezi.jpg",
              title1: "Rezi Makarov",
              subtitle1: "its been a while",
              date: "Today"
          ),
          textTileCard(
              image: "asset/image/gustav.jpg",
              title1: "Gustav Lamelo",
              subtitle1: "Hey,where are you?",
              date: "Yesterday"),
          textTileCard(
              image: "asset/image/bob.jpg",
              title1: "Bob Ryder",
              subtitle1: "its over!",
              date: "28 jan"),
         textTileCard(
             image: "asset/image/ken.jpg",
             title1: "Ken Simada",
             subtitle1: "Your Welcome",
             date: "24 jan"),
         textTileCard(
             image: "asset/image/emma.jpg",
             title1: "Emma Walkins",
             subtitle1: "I am going out!",
             date: "19 jan"),
          textTileCard(
              image: "asset/image/gilbert.jpg",
              title1: "Gilbert Hamminway",
              subtitle1: "just attach the image and send it.",
              date: "12 jan"),
          textTileCard(
              image: "asset/image/bella.jpg",
              title1: "Bella Hammers",
              subtitle1: "The UI is sexy",
              date: "5 jan"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.group_work ),label: "Channels"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
      ),
    );
  }
}

Widget textTileCard ({

  required String image,
  required String title1,
  required String subtitle1,
  required String date,
}){

  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
      ),
      title: Text( title1,
        style: TextStyle(
            fontSize: 15,
            //   fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
      subtitle: Text(subtitle1,
        style: TextStyle(
          fontSize: 13,
        ),
      ),
      trailing: Text(date,
        style: TextStyle(
            fontSize: 13,
            color: Colors.black
        ),
      ),
    ),
  );
}