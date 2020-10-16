import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
    builder: (context) => AddPage(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Publication",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text("AJOUTER UNE PUBLICATION"),

      ),
    );
  }
}