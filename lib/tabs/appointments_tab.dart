import 'package:flutter/material.dart';
import 'package:saoji_flutter/data/appointments.dart';

class AppointmentTabs extends StatelessWidget {
  const AppointmentTabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        floatingActionButton: buildCreateAppointmentButton(context),
        body: ListView.builder(
            itemCount: appointmentData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                    child: ListTile(
                  title: Text(appointmentData[index].title),
                  subtitle: Text("Date - 19-02-2021 Time:5PM"),
                  trailing: Icon(
                    Icons.check_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage('assets/images/appointment.png'),
                  ),
                )),
              );
            }));
  }

  Widget buildCreateAppointmentButton(context) => FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, 'new_appointment');
        },
        label: Text(
          "Appointment",
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      );
}
