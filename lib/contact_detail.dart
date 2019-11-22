import 'package:flutter/material.dart';

import 'contact.dart';

class ContactDetail extends StatefulWidget {
  final Contact contact;

  ContactDetail({Key key, this.contact}) : super(key: key);

  @override
  _ContactDetailState createState() => _ContactDetailState();
}

class _ContactDetailState extends State<ContactDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Book'),
      ),
      body: Column(
        children: <Widget>[
          contactImage("assets/me.jpeg", widget.contact.name),
          SizedBox(
            height: 20.0,
          ),
          contactItem(widget.contact.mobileNumber, Icons.phone, () {
            print("Tap");
          }),
          contactItem(widget.contact.emailAddress, Icons.email, () {
            print("Tap");
          }),
        ],
      ),
    );
  }

  Widget contactImage(String contactImageAssetName, String contactName) {
    return Stack(children: [
      Image(image: AssetImage(contactImageAssetName)),
      Positioned(
        bottom: 1.0,
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20.0),
          child: Text(
            contactName,
            key: Key('contact-name'),
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ]);
  }

  Widget contactItem(String text, IconData icon, GestureTapCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            )),
      ),
    );
  }
}
