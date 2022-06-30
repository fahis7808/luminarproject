import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SliderDemo(),
  ));
}

class SliderDemo extends StatelessWidget {
  List<String> image = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://images.unsplash.com/photo-1544526226-d4568090ffb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGQlMjBpbWFnZXxlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1601786776487-5530c3a6287a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29uZGVyZnVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1531016193583-04aed4446b30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5jcmVkaWJsZXxlbnwwfHwwfHw%3D&w=1000&q=80",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(40),
        child: CarouselSlider.builder(
            itemCount: image.length,
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: 450,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
            ),
            itemBuilder: (context, i, id) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent)),
                  child: ClipRRect(
                    child: Image.network(
                      image[i],
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onTap: () {
                  print("Welcome");
                },
              );
            }),
      ),
    );
  }
}
