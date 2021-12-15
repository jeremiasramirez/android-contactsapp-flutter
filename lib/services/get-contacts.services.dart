import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ContactServices extends StatefulWidget {
  ContactServicesFull createState() => new ContactServicesFull();
}

class ContactServicesFull extends State<ContactServices> {
  Widget build(context) {
    return Text('Hello services.');
  }

  Future getAll() {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users');

    return http.get(uri);
  }
}
