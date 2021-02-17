import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //Add Logout Button, Function and variable
  final String fname;
  final String lname;
  final String addr;
  final String post;
  final String pnum;
  final String rdate;

  Home(this.fname, this.lname, this.addr, this.post, this.pnum, this.rdate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text(
          "Cargo Form",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/66.jpg'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Firstname : $fname\nLastname : $lname\nAddress : $addr\nPoatal : $post\nPhone : $pnum\nRecieveDate : $rdate", //Place Code Here
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent),
            ),
          ],
        ),
      ),
    );
  }
}
