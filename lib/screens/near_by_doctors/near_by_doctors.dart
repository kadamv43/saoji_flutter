import 'package:flutter/material.dart';
import 'package:saoji_flutter/components/side_drawer.dart';
import 'package:saoji_flutter/data/doctors.dart';

class NearByDoctors extends StatefulWidget {
  const NearByDoctors({Key? key}) : super(key: key);

  @override
  _NearByDoctorsState createState() => _NearByDoctorsState();
}

class _NearByDoctorsState extends State<NearByDoctors> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Near By Doctors"),
      ),
      body: Container(
        child: new ListView.builder(
            itemCount: doctorsData.length,
            itemBuilder: (BuildContext context, int index) =>
                buildDoctorCard(context, index)),
      ),
    );
  }

  Widget buildDoctorCard(BuildContext context, int index) {
    return new Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          elevation: 3.5,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage(doctorsData[index].image),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        children: <Widget>[
                          Text(
                            doctorsData[index].name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Text(doctorsData[index].speciality)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(doctorsData[index].degree),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        children: <Widget>[
                          Text(doctorsData[index].exp),
                          Spacer(),
                          Text("\u20B9" + doctorsData[index].fee)
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
