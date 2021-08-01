import 'package:flutter/material.dart';
import 'package:saoji_flutter/components/side_drawer.dart';
import 'package:saoji_flutter/tabs/appointments_tab.dart';
import 'package:saoji_flutter/tabs/contact_us_tab.dart';
import 'package:saoji_flutter/tabs/home_collection_tab.dart';
import 'package:saoji_flutter/tabs/home_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _title = "Home";

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeTabs(),
    AppointmentTabs(),
    HomeCollectionTab(),
    ContactUsTab()
  ];

  final titles = ["Home", "Appointments", "Collect Test Sample", "Contact Us"];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
      _title = titles[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: AppBar(
        title: new AppBarTitle(_currentIndex, _title),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTappedBar,
        elevation: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).accentColor,
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 11),
        selectedLabelStyle: TextStyle(fontSize: 12),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.calendar_today_rounded),
              label: "Appointments"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.medical_services_rounded),
              label: "Collect Sample"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.phone), label: "Contact"),
        ],
      ),
      drawer: SideDrawer(),
      body: _children[_currentIndex],
    );
  }
}

class AppBarTitle extends StatelessWidget {
  AppBarTitle(this.index, this.title) : super();
  final int index;
  final String title;
  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Image.asset(
        'assets/images/logo.png',
        width: 100,
        fit: BoxFit.contain,
      );
    } else {
      return Text(
        title,
        style: TextStyle(color: Colors.black),
      );
    }
    // return Container();
  }
}
