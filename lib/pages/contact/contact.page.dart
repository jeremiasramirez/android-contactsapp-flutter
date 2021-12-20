//import 'package:contactsapp/services/get-contacts.services.dart';
import 'package:animate_do/animate_do.dart';
import 'package:contactsapp/pages/home/home.page.dart';
import 'package:contactsapp/widgets/home/home.banner.dart';
import 'package:flutter/material.dart';
// import 'dart:convert' as convert;

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
            body: Column(children: [
              this.imageForContact(),
              SizedBox(height: 17),
              this.numberAndNameContact(),
              SizedBox(height: 25),
              this.sectionVideoAndCall(),
              SizedBox(height: 15),
              this.titleHistory(),
              SizedBox(height: 12),
              this.historyCalls("Incoming", "809-222-2222", "3:40 PM"),
              SizedBox(height: 12),
              this.historyCalls("Outgoing", "829-111-1212", "10:02 AM"),
              SizedBox(height: 60),
              this.editContact()
            ])));
  }

  Widget sectionVideoAndCall() {
    return Container(
        width: 303,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          this.iconForSectionCall(Icon(Icons.call)),
          this.iconForSectionCall(Icon(Icons.video_call_rounded)),
          this.iconForSectionCall(Icon(Icons.messenger_outline_rounded))
        ]));
  }

//  HomeFull().buttonForCall(Icon(Icons.add))
  Widget iconForSectionCall(Icon icon) {
    return Container(
        width: 50,
        height: 50,
        // margin: EdgeInsets.all(3),
        child: Center(child: HomeFull().buttonForCall(icon)),
        decoration: BoxDecoration(
            color: Colors.blue[900], borderRadius: BorderRadius.circular(70)));
  }

  BounceInDown numberAndNameContact() {
    return BounceInDown(
        child: Center(
            child: Column(children: [
      Text("Leanne Graham",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'ubuntu')),
      SizedBox(height: 6),
      Text("403-499-0098",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'ubuntu',
              color: Colors.grey[600])),
    ])));
  }

  BounceInDown imageForContact() {
    return BounceInDown(
        child: Center(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        width: 160,
        height: 160,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey[800], borderRadius: BorderRadius.circular(100)),
        child: Container(
            width: 130,
            height: 130,
            child: Center(
                child: Text(
              'L',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'ubuntu'),
            )),
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, .4),
                borderRadius: BorderRadius.circular(100))),
      ),
    ));
  }

  Widget titleHistory() {
    return Text("History",
        style: TextStyle(
            fontSize: 15,
            color: Colors.grey[500],
            fontWeight: FontWeight.w400,
            fontFamily: 'ubuntu'));
  }

  BounceInUp editContact() {
    return BounceInUp(
        child: Container(
            width: 320,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue[900]),
            child: Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Editor"),
                SizedBox(width: 7),
                Icon(Icons.edit, size: 17)
              ],
            ))));
  }

  BounceInUp historyCalls(String typecoming, String number, String time) {
    return BounceInUp(
        child: Container(
            width: 320,
            padding: EdgeInsets.only(left: 8, top: 6, bottom: 3, right: 10),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.phone_callback_outlined),
                Column(children: [
                  Text(typecoming,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[300],
                          fontFamily: 'ubuntu')),
                  SizedBox(height: 4),
                  Text("\t\t\t\t\t" + number,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w300,
                          fontFamily: 'arial'))
                ]),
                Text(time,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                        fontFamily: 'ubuntu'))
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[800])));
  }
}
