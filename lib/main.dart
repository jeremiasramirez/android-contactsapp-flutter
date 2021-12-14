import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  constructor() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(body: Text("Hola!!")));
  }
}
