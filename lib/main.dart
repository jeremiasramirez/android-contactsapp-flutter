import 'package:contactsapp/pages/contact/contact.page.dart';
import 'package:contactsapp/pages/home/home.page.dart';
import 'package:contactsapp/pages/start/start.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainFull());
}

class MainFull extends StatefulWidget {
  Main createState() => new Main();
}

class Main extends State<MainFull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts app',
        theme: ThemeData.dark(),
        routes: {
          '/start': (context) => StartPage(),
          '/contact': (context) => ContactPage(),
          '/home': (context) => Home(),
        },
        initialRoute: '/start');
  }
}
