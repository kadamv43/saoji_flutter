import 'package:flutter/material.dart';
import 'package:saoji_flutter/components/side_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Flexible(
                  child: Card(
                    child: FittedBox(
                      child: Image.asset('assets/images/about_us/1.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text("About Us",
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 9),
                Container(
                  child: Text(
                    "We are the dedicated diagnostic and wellness centre , with a focus “Quality diagnostic service with compassion and care” . Our centre offers the best of cutting edge technology and instruments required for better diagnostic results along with the team of experienced doctors and pathologist specialised in their respective fields . We are at the service to the community since 30 years, with a focus of quality diagnostic service with accuracy in reports which help your doctors to take the expertised decision in your treatment.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 9),
                Container(
                  child: Text(
                    "Saoji Diagnostic & Wellness Centre welcome the opportunity to earn your trust and deliver you the best service.",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(height: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
