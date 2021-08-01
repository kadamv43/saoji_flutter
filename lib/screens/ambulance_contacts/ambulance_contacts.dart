import 'package:flutter/material.dart';
import 'package:saoji_flutter/components/side_drawer.dart';
import 'package:saoji_flutter/data/ambulance.dart';

class AmbulanceContacts extends StatelessWidget {
  const AmbulanceContacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text("Ambulance Contacts"),
      ),
      body: Container(
        child: new ListView.builder(
            itemCount: ambulanceData.length,
            itemBuilder: (BuildContext context, int index) =>
                buildBloodbankCard(context, index)),
      ),
    );
  }

  Widget buildBloodbankCard(BuildContext context, int index) {
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
                      backgroundImage: AssetImage(ambulanceData[index].image),
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
                            ambulanceData[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          Spacer(),
                          //Text(bloodbanksData[index].address)
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Text(ambulanceData[index].phone),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: <Widget>[
                        Text(ambulanceData[index].address),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 5),
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
