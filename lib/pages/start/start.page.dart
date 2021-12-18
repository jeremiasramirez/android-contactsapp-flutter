import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPageFull createState() => new StartPageFull();
}

class StartPageFull extends State<StartPage> {
  List<ListTile> contacts = [];

  Future futureHome() {
    return Future.delayed(Duration(seconds: 3), () => true);
  }

  void setHome(BuildContext context) {
    this.futureHome().then((value) {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    this.setHome(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Start',
        theme: ThemeData.dark(),
        home: Scaffold(
            body: Center(
                child: Container(
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                            width: 100,
                            image:
                                AssetImage('assets/images/contact-logo.png')),
                        this.contentStart()
                      ],
                    )))));
  }

  Widget contentStart() {
    return FadeInUp(
        from: 100,
        child: Container(
            child: Column(
          children: [
            Text("Downloading",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'ubuntu')),
            SizedBox(height: 18),
            CircularProgressIndicator(
              strokeWidth: .7,
            )
          ],
        )));
  }
}
