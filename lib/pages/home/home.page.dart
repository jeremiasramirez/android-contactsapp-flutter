import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeFull createState() => new HomeFull();
}

class HomeFull extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts app',
        theme: ThemeData.dark(),
        home: Scaffold(body: Text("Hola home!!")));
  }
}
