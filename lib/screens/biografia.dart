import 'dart:ui';

import 'package:flutter/material.dart';

//widgets
import 'package:h4_exa/widgets/navbar.dart';

class Biografia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Navbar(
          rightOptions: false,
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 74.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Hello, Shea Lewis',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0)),
                          Text('Well come to your Home.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0)),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.only(left: 9, top: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _Clima(),
                          SizedBox(height: 10.0),
                          _textRoom(),
                          SizedBox(height: 10.0),
                          _Living(),
                          SizedBox(height: 10.0),
                          _Bed(),
                          SizedBox(height: 10.0),
                          _Bath(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

Widget _Clima() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 150.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 126, 223, 243),
          borderRadius: BorderRadius.circular(30.0)),
      child: Row(children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            image: AssetImage("assets/img/dia-lluvioso.png"),
                            fit: BoxFit.none))),
              ),
              Container(
                padding: EdgeInsets.only(left: 1),
                child: Text('Cloudy',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Text('10 January 2022',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text('27º',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 38.0)),
                ),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}

Widget _textRoom() {
  return Transform.translate(
    offset: Offset(0.0, -80.0),
    child: Container(
      height: 90.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 30.0),
            child: const Text('Your Rooms',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0)),
          ),
        ),
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(5.0),
              backgroundColor: Color.fromARGB(
                  255, 222, 253, 250), // background (button) color
              foregroundColor:
                  Color.fromARGB(255, 0, 180, 129), // foreground (text) color
            ), // ignore
            onPressed: () {},
            child: Padding(
                padding:
                    EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
                child: Text("+ Add",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 15.0))),
          ),
        ),
      ]),
    ),
  );
}

Widget _Living() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 150.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 227, 225),
          borderRadius: BorderRadius.circular(25.0)),
      child: Row(children: <Widget>[
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(5.0),
              backgroundColor: Color.fromARGB(
                  255, 222, 253, 250), // background (button) color
              foregroundColor:
                  Color.fromARGB(255, 0, 180, 129), // foreground (text) color
            ), // ignore
            onPressed: () {},
            child: Padding(
              padding:
                  EdgeInsets.only(left: 16.0, right: 16.0, top: 8, bottom: 8),
              child: ClipOval(
                child: Image.asset(
                  'assets/img/banera.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Switch(
          value:null,
          overlayColor: null,
          trackColor:null,
          thumbColor: MaterialStateProperty.all<Color>(Colors.black),
          onChanged: (bool value) {
          SetState(() {
          light = value;
        },);},
        ),
      ],),
    ),
  );
}

Widget _Bed() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 100.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 170, 225, 247),
          borderRadius: BorderRadius.circular(30.0)),
      child: ListView(
        padding: EdgeInsets.only(top: 24, left: 16, right: 16),
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Biografía',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 24.0)),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('M',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 18.0)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _Bath() {
  return Transform.translate(
    offset: Offset(0.0, -90.0),
    child: Container(
      padding: EdgeInsets.all(9.0),
      height: 100.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 253, 213, 167),
          borderRadius: BorderRadius.circular(30.0)),
      child: ListView(
        padding: EdgeInsets.only(top: 24, left: 16, right: 16),
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Biografía',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 24.0)),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mi nombre es Yadira Tirado Rome',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w200,
                        fontSize: 18.0)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
