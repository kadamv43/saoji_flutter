import 'package:flutter/material.dart';

class SideDrawer extends StatefulWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () => {Navigator.pushReplacementNamed(context, 'home')},
              context: context),
          _createDrawerItem(
              text: 'About Us',
              icon: Icons.group_work,
              onTap: () => {Navigator.pushNamed(context, 'about_us')},
              context: context),
          Divider(),
          _createDrawerItem(
              icon: Icons.medical_services,
              text: 'Near By Doctors',
              onTap: () => {Navigator.pushNamed(context, 'near_by_doctors')},
              context: context),
          _createDrawerItem(
              icon: Icons.bloodtype,
              text: 'Near By Blood bank ',
              onTap: () => {Navigator.pushNamed(context, 'near_by_bloodbanks')},
              context: context),
          _createDrawerItem(
              icon: Icons.medical_services_outlined,
              text: 'Ambulance Contacts',
              onTap: () => {Navigator.pushNamed(context, 'ambulance_contacts')},
              context: context),
          _createDrawerItem(
              icon: Icons.card_membership,
              text: 'Our Membership',
              onTap: () {},
              context: context),
          Divider(),
          _createDrawerItem(
              icon: Icons.stars,
              text: 'Privacy Policy',
              onTap: () {},
              context: context),
          _createDrawerItem(
              icon: Icons.question_answer,
              text: 'Terms & Condition',
              onTap: () {},
              context: context),
          Divider(),
          _createDrawerItem(
              icon: Icons.bug_report,
              text: 'Report an issue',
              onTap: () {},
              context: context),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [Image(image: AssetImage('assets/images/logo1.png'))],
      ));
}

Widget _createDrawerItem(
    {IconData? icon,
    required String text,
    GestureTapCallback? onTap,
    BuildContext? context}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Theme.of(context!).primaryColor,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}
