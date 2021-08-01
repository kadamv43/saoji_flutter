import 'package:flutter/material.dart';

class ContactUsTab extends StatefulWidget {
  const ContactUsTab({Key? key}) : super(key: key);

  @override
  _ContactUsTabState createState() => _ContactUsTabState();
}

class _ContactUsTabState extends State<ContactUsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 10,
          ),
          ListTile(
            tileColor: Colors.grey,
            leading: Icon(
              Icons.badge,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Saoji Diagnostic Center',
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              'C-Wing, Ground Floor, Bindra Classic, Building No.5, Near Sakhalkar Hospital Hilton Tower Lane, (Malpa Dondri No.3, Road, Sher E Punjab Colony, Andheri East, Mumbai, Maharashtra 400093',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            selected: true,
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Phone',
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              '022 2822 1116',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            selected: true,
          ),
          ListTile(
            leading: Icon(
              Icons.lock_clock,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Timing',
              textScaleFactor: 1.5,
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              'Monday-Friday 9AM to 10PM',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
            selected: true,
          ),
        ],
      ),
    );
  }
}
