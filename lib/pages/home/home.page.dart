import 'package:animate_do/animate_do.dart';
import 'package:contactsapp/pages/contact/contact.page.dart';
import 'package:contactsapp/services/get-contacts.services.dart';
import 'package:contactsapp/widgets/home/home.banner.dart';
import 'package:flutter/cupertino.dart';
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
            floatingActionButton: ZoomIn(
                child: FloatingActionButton(
                    backgroundColor: Colors.blue[700],
                    child: Icon(Icons.search, color: Colors.white),
                    onPressed: () {})),
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
      this.contacts = this.skeletum();
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
        leading: BounceInLeft(
            child: Container(
                width: 50,
                height: 70,
                // margin: EdgeInsets.all(3),
                child: Center(child: Text(element['name'].substring(0, 1))),
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(70)))),
        onTap: () {
          Navigator.pushNamed(context, '/contact');
        },
        trailing: BounceInLeft(
            child: Container(
                width: 70,
                height: 40,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      this.buttonForCall(
                          Icon(Icons.call, color: Colors.green[400], size: 30)),
                      this.buttonForCall(Icon(Icons.more_vert,
                          color: Colors.blue[400], size: 25))
                    ]))),
        title: BounceInLeft(
            child: Container(
                margin: EdgeInsets.only(right: 50),
                child: Column(
                  children: [
                    Text(element['name'].substring(0, 12) + '..',
                        style: TextStyle(fontSize: 14)),
                    Text(element['phone'].toString().substring(0, 12),
                        style: TextStyle(fontSize: 12))
                  ],
                ))));
  }

  Widget buttonForCall(dynamic icon) {
    return Container(
        width: 35,
        height: 35,
        padding: EdgeInsets.all(3),
        child: icon,
        decoration: BoxDecoration(
            // color: Color.fromRGBO(0, 0, 0, .1),
            borderRadius: BorderRadius.circular(50)));
  }

  List<ListTile> skeletum() {
    List<int> data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
    List<ListTile> skeletumData = [];

    data.forEach((element) => {
          skeletumData.add(ListTile(
              title: Column(
            children: [
              BounceInLeft(
                  child: Container(
                      width: 310,
                      height: 45,
                      child: Row(children: [
                        Container(
                            margin: EdgeInsets.only(left: 6, right: 18),
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(40))),
                        Container(
                          width: 180,
                          height: 22,
                          decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(5)),
                        )
                      ]),
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(4)))),
            ],
          )))
        });

    return skeletumData;
  }
}
