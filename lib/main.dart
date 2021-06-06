import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              color: Colors.black,
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.grey[100],
          title: Center(
            child: Text(
              'Ecom App UI',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          width: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/iphone12.jpeg')),
                      borderRadius: BorderRadius.circular(2)),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text("Iphone 12"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
