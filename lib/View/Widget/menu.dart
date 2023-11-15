import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Theme.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.settings,
          color: blueColor,
        ),
      ),
      title: Text(
        'Settings',
        style: blueTextStyle3.copyWith(fontSize: 12),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        child: Icon(
          Icons.arrow_right,
          color: Colors.grey,
        ),
      ),
    );
  }
}

class Menu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.settings,
          color: blueColor,
        ),
      ),
      title: Text(
        'Profile',
        style: blueTextStyle3.copyWith(fontSize: 12),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: greyColor2,
        ),
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
