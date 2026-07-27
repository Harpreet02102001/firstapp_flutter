import 'package:flutter/material.dart';


void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),

          title: Text("Flutter App"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.person),
            Icon(Icons.person_2_rounded),
            Icon(Icons.stacked_bar_chart),
          ],
        ),

        body: Center(
          child: Text("Hello World"),
        ),

      ),
    ),
  );
}