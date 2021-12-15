import 'package:contactsapp/services/get-contacts.services.dart';
import 'package:contactsapp/widgets/home/home.banner.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class ContactPage extends StatefulWidget {
  ContactPageFull createState() => new ContactPageFull();
}

class ContactPageFull extends State<ContactPage> {
  List<ListTile> contacts = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contact',
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: BannerHome().build(context, "Profile"),
            body: ListView(physics: ScrollPhysics(), children: [])));
  }
}
