// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:second_opi/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:second_opi/pages/Payment.dart';


class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book An Appointment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          'assets/images/circle.jpg',
                          fit: BoxFit.cover,
                          width: 120,
                          height: 240,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Dr. Samantha Ruthprabhu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Dentist\n4-5 years Experience',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Dr Shabana Shamsuddin believes in the goodness and potential inherent in all human beings. She offers her unconditional positive regard in her professional therapeutic practice for her clients to rise ...',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    '\$45 Consultation Fees',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '4.5/5 Rating',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Book Appointment With Samantha Ruthprabhu',
                    style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Form(
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(labelText: 'Type of Session'),
                          items: [
                            DropdownMenuItem(
                              value: 'consultation',
                              child: Text('Consultation'),
                            ),
                            DropdownMenuItem(
                              value: 'follow-up',
                              child: Text('Follow-up'),
                            ),
                            DropdownMenuItem(
                              value: 'routine-checkup',
                              child: Text('Routine Checkup'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        TextFormField(
                          decoration:
                          InputDecoration(labelText: 'Date of Appointment'),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2101),
                            );
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Reason for Appointment'),
                          maxLines: 4,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                              labelText: 'Time of Appointment'),
                          items: [
                            DropdownMenuItem(
                              value: '09:00',
                              child: Text('09:00 AM'),
                            ),
                            DropdownMenuItem(
                              value: '10:00',
                              child: Text('10:00 AM'),
                            ),
                            DropdownMenuItem(
                              value: '11:00',
                              child: Text('11:00 AM'),
                            ),
                            DropdownMenuItem(
                              value: '12:00',
                              child: Text('12:00 PM'),
                            ),
                            DropdownMenuItem(
                              value: '01:00',
                              child: Text('01:00 PM'),
                            ),
                            DropdownMenuItem(
                              value: '02:00',
                              child: Text('02:00 PM'),
                            ),
                            DropdownMenuItem(
                              value: '03:00',
                              child: Text('03:00 PM'),
                            ),
                            DropdownMenuItem(
                              value: '04:00',
                              child: Text('04:00 PM'),
                            ),
                            DropdownMenuItem(
                              value: '05:00',
                              child: Text('05:00 PM'),
                            ),
                          ],
                          onChanged: (value) {},
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Upload Reports'),
                          onTap: () async {
                            // Handle file upload
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    color: Colors.blue[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Payment Details',
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 12),
                        Text('Session fee: \$200'),
                        Text('Taxes: \$2'),
                        Divider(),
                        Text(
                          'Total fee: \$202',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      iconColor: Color(0xff007BFF),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                    ),),
                    onPressed: () {
                      Navigator.push(
                        context ,
                        MaterialPageRoute(builder: (context) =>  PaymentPage()),
                      );
                    },
                    child: Text('Proceed to Payment',
                      style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Footer(),
          ],
        ),

      ),
    );
  }
}
