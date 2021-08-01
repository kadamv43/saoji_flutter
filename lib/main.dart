import 'package:flutter/material.dart';
import 'package:saoji_flutter/HomePage.dart';
import 'package:saoji_flutter/screens/about_us/about_us.dart';
import 'package:saoji_flutter/screens/ambulance_contacts/ambulance_contacts.dart';
import 'package:saoji_flutter/screens/near_by_blood_bank/near_by_bloodbanks.dart';
import 'package:saoji_flutter/screens/near_by_doctors/near_by_doctors.dart';
import 'package:saoji_flutter/screens/new_appointment/new_appointment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Color(0xFFd23150),
        accentColor: Color(0xFFc0863a),

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      routes: {
        'home': (context) => HomePage(),
        'near_by_doctors': (context) => NearByDoctors(),
        'near_by_bloodbanks': (context) => NearByBloodbanks(),
        'new_appointment': (context) => NewAppointment(),
        'ambulance_contacts': (context) => AmbulanceContacts(),
        'about_us': (context) => AboutUs()
      },
    );
  }
}
