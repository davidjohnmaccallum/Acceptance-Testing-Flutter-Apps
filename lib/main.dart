import 'package:address_book/contact_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Address Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactList(title: 'Address Book'),
    );
  }
}