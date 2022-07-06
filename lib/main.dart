import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/IconWidget.dart';
import 'package:untitled1/ProfilPic.dart';
import 'package:untitled1/MessageBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assignment 1",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 70,
            leadingWidth: 40,
            backgroundColor: Colors.black,
            leading: Icon(Icons.arrow_back),
            title: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/person.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border.all(
                          color: Color.fromARGB(0, 0, 0, 0), width: 3)),
                  margin: EdgeInsets.only(right: 20),
                ),
                Container(
                  child: Text("Person"),
                ),
              ],
            ),
            actions: [
              IconWidget(Icon(Icons.videocam)),
              IconWidget(Icon(Icons.call)),
              IconWidget(Icon(Icons.more_vert))
            ]),
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover),
            )),
            Column(
              children: [
                Row(
                  children: [
                    ProfilePic('assets/images/person1.jpg'),
                    MessageBox(
                        "This is My First Message", 220, 60, TextAlign.center)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MessageBox(
                        "This is My Second Message", 220, 60, TextAlign.center),
                    ProfilePic('assets/images/person2.jpg'),
                  ],
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          width: 280,
                          height: 60,
                          child: TextField(
                            textAlign: TextAlign.justify,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2)),
                                hintText: "Type a Message",
                                hintStyle: TextStyle(color: Colors.white),
                                prefixIcon:
                                    Icon(Icons.tag_faces, color: Colors.white),
                                suffixIcon: Icon(
                                  Icons.attach_file,
                                  color: Colors.white,
                                )),
                          )),
                      Container(
                        child: FloatingActionButton(
                          shape: CircleBorder(
                              side: BorderSide(color: Colors.white)),
                          hoverColor: Colors.white,
                          focusColor: Colors.white,
                          splashColor: Colors.white,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          onPressed: null,
                          child: Icon(
                            Icons.mic,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 5, left: 10),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
