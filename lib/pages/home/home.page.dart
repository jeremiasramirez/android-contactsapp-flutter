import 'package:contactsapp/widgets/home/home.banner.dart';
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
        home: Scaffold(appBar: BannerHome().banner("Contact List.")));
  }
}
