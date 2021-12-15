import 'package:flutter/material.dart';

class BannerHome {
  AppBar banner(String title) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading:
          Icon(Icons.arrow_back_rounded, color: Colors.grey[300], size: 22),
      centerTitle: true,
      title: Text(title, style: TextStyle(fontSize: 14.0)),
      elevation: 0,
      toolbarHeight: 45,
    );
  }
}
