import 'package:flutter/material.dart';
import 'package:second_opi/pages/Home.dart';

class AppointmentViewPage extends StatelessWidget {
  final String? sessionType;
  final String? date;
  final String? time;
  final String? reason;
  final String? filePath;

  AppointmentViewPage({
    this.sessionType,
    this.date,
    this.time,
    this.reason,
    this.filePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        RichText(
            text: TextSpan(
              text: 'SECOND',
              style: TextStyle(fontSize: 20, color: Color.fromRGBO(16, 1, 92, 1)),
              children: <TextSpan>[
                TextSpan(
                  text: 'OPI',
                  style: TextStyle(fontSize: 14, color: Color.fromRGBO(16, 1, 92, 1)),
                ),
              ],
            ),
          ),


        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: Text('Find A Doctor'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Specialties'),
              onTap: () {},
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Appointment Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Appointment ID:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('12345'), // Replace with actual ID
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Patient:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('John Doe'), // Replace with actual patient name
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Payment Successful'), // Replace with actual payment status
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Date of Appointment:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(date ?? 'N/A'),
                  SizedBox(height: 8),
                  Text(
                    'Doctor:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Dr. Samantha Ruthprabhu'), // Replace with actual doctor name
                  SizedBox(height: 8),
                  Text(
                    'Reports Added:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(filePath != null ? filePath!.split('/').last : 'None'), // Replace with actual report
                  SizedBox(height: 16),
                  Text(
                    'Reason:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(reason ?? 'N/A'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
