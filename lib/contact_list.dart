import 'package:address_book/contact.dart';
import 'package:flutter/material.dart';

import 'contact_detail.dart';

class ContactList extends StatefulWidget {
  ContactList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  List<Contact> contacts = [
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
    Contact(
        name: "David MacCallum",
        emailAddress: "davidjohnmac@gmail.com",
        mobileNumber: "0725586774",
        image: "assets/me.jpeg"),
  ];

  Widget buildListView() {
    return ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext ctxt, int index) {
          Contact contact = contacts[index];
          return ListTile(
            key: Key("contact-$index"),
            leading: CircleAvatar(
              backgroundImage: AssetImage(contact.image),
            ),
            title: Text(contact.name),
            subtitle: Text(contact.emailAddress),
            onTap: () => Navigator.push(
              ctxt,
              MaterialPageRoute(builder: (context) => ContactDetail(contact: contact,)),
            ),
          );
        });
  }
}
