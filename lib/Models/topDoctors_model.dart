// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  DoctorCard({required this.image, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Adjusted width
      margin: EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.asset(
              image,
              height: 200, // Adjusted height
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[700],
                  iconColor: Color(0xFF007BFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Handle booking appointment
                },
                child: Text('Book An Appointment',
                style: TextStyle(
                  color: Colors.white,
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
