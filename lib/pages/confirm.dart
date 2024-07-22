import 'package:flutter/material.dart';
import 'package:second_opi/pages/appointmentViewPage.dart';
import 'package:second_opi/pages/Home.dart';

class ConfirmationPage extends StatelessWidget {
  final String sessionType;
  final String date;
  final String time;
  final String reason;
  final String filePath;

  ConfirmationPage({
    required this.sessionType,
    required this.date,
    required this.time,
    required this.reason,
    required this.filePath,
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
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            Text(
              'Booking is confirmed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Your appointment with the doctor is confirmed! Get ready for your consultation.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentViewPage(
                      sessionType: sessionType,
                      date: date,
                      time: time,
                      reason: reason,
                      filePath: filePath,
                    ),
                  ),
                );
              },
              child: Text('View Appointment',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text('Home',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
