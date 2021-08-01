import 'package:flutter/material.dart';

class NewAppointment extends StatefulWidget {
  const NewAppointment({Key? key}) : super(key: key);

  @override
  _NewAppointmentState createState() => _NewAppointmentState();
}

class _NewAppointmentState extends State<NewAppointment> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String selectDateText = "Select Date";
  String selectTimeText = "Select Time";
  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        selectDateText = picked.toLocal().toString().split(' ')[0];
      });
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedS =
        await showTimePicker(context: context, initialTime: selectedTime);

    if (pickedS != null && pickedS != selectedTime)
      setState(() {
        selectedTime = pickedS;
        selectTimeText = pickedS.format(context);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              moveToLastScreen(context);
            },
          ),
          title: Text("New Appointment")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo1.png')),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Enter Full Name"),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text(selectDateText),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey))),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () => _selectTime(context),
              child: Text(selectTimeText),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.grey))),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
              onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        // title: Text("Appoinment"),
                        content: Text("Appoinmnent Booked SuccessFully"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      )),
              child: Text("Submit"),
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(300, 50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor)))
        ],
      )),
    );
  }

  void moveToLastScreen(context) {
    Navigator.pop(context);
  }
}
