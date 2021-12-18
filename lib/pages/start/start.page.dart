import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPageFull createState() => new StartPageFull();
}

class StartPageFull extends State<StartPage> {
  List<ListTile> contacts = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Start',
        theme: ThemeData.dark(),
        home: Scaffold(body: ListView(physics: ScrollPhysics(), children: [])));
  }
}
