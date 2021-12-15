import 'package:contactsapp/pages/contact/contact.page.dart';
import 'package:contactsapp/services/get-contacts.services.dart';
import 'package:contactsapp/widgets/home/home.banner.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;

class Home extends StatefulWidget {
  HomeFull createState() => new HomeFull();
}

class HomeFull extends State<Home> {
  List<ListTile> contacts = [];

  @override
  Widget build(BuildContext context) {
    this.contactsItems();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contacts app',
        theme: ThemeData.dark(),
        home: Scaffold(
            appBar: BannerHome().build(context, "Contact List"),
            body: ListView(
              physics: ScrollPhysics(),
              children: this.contacts,
            )));
  }

  void contactsItems() {
    List data = [];

    var serviceall = new ContactServicesFull();

    if (this.contacts.length == 0) {
      this.contacts = [(ListTile(title: Text("no hay elementos")))];
    }

    serviceall.getAll().then((value) {
      this.contacts = [];

      data = convert.jsonDecode(value.body);

      setState(() {});

      data.forEach((element) {
        this.contacts.add(this.item(element));
      });
    });
  }

  ListTile item(element) {
    return ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Container(
            width: 50,
            height: 70,
            // margin: EdgeInsets.all(3),
            child: Center(child: Text(element['name'].substring(0, 1))),
            decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(70))),
        onTap: () {
          print(element);
          Navigator.pushNamed(context, '/contact');
        },
        trailing: Container(
            width: 110,
            height: 40,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  this.buttonForCall(
                      Icon(Icons.call, color: Colors.green[400], size: 25)),
                  this.buttonForCall(Icon(Icons.message_rounded,
                      color: Colors.green[400], size: 25)),
                  this.buttonForCall(
                      Icon(Icons.more_vert, color: Colors.green[400], size: 25))
                ])),
        title: Text(element['name'].substring(0, 10) + '..'));
  }

  Widget buttonForCall(dynamic icon) {
    return Container(
        width: 30,
        height: 30,
        child: icon,
        decoration: BoxDecoration(
            // color: Colors.grey[900],
            borderRadius: BorderRadius.circular(50)));
  }
}
