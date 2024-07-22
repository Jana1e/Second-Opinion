// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DiscoverSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff9f9f9), // Background color
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          benefitCard(
            title:
                'Discover our community of compassionate and approachable mental health experts.',
            description:
                'Every provider undergoes a thorough vetting process, ensuring they are exceptionally qualified and experienced. Over 100 professionals with extensive experience, dedicated to supporting individuals in improving their mental health and emotional well-being.',
            buttonText: 'View All',
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: Color(0xff8C8C8C),
              thickness: 1,
            ),
          ),
          benefitCard(
            title: 'Discover the Benefits of a Second Opinion.',
            description:
                'In the realm of healthcare decisions, seeking a second opinion is a crucial step that can significantly impact the quality and certainty of diagnoses and treatment plans. The importance of a second opinion lies in its potential to provide patients with a comprehensive understanding of their medical condition, empowering them to make informed choices about their health. By consulting another expert, individuals can gain valuable insights, alternative perspectives, and explore diverse treatment options tailored to their specific needs. Additionally, a second opinion serves as a safeguard against misdiagnoses or inappropriate treatments, offering peace of mind and fostering confidence in the healthcare journey. Our platform is dedicated to facilitating this essential process, connecting users with reputable healthcare professionals to ensure they receive the most accurate and personalized advice for their well-being. Make informed decisions about your health with the confidence that comes from a trusted second opinion.',
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: Color(0xff8C8C8C),
              thickness: 1,
            ),
          ),
          benefitCard(
            title: 'Discover the Benefits of a Second Opinion.',
            description:
                'In the realm of healthcare decisions, seeking a second opinion is a crucial step that can significantly impact the quality and certainty of diagnoses and treatment plans. The importance of a second opinion lies in its potential to provide patients with a comprehensive understanding of their medical condition, empowering them to make informed choices about their health. By consulting another expert, individuals can gain valuable insights, alternative perspectives, and explore diverse treatment options tailored to their specific needs. Additionally, a second opinion serves as a safeguard against misdiagnoses or inappropriate treatments, offering peace of mind and fostering confidence in the healthcare journey. Our platform is dedicated to facilitating this essential process, connecting users with reputable healthcare professionals to ensure they receive the most accurate and personalized advice for their well-being. Make informed decisions about your health with the confidence that comes from a trusted second opinion.',
          ),
        ],
      ),
    );
  }

  Widget benefitCard(
      {required String title,
      required String description,
      String? buttonText}) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.blue[700], // Title color
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 19,
              color: Color(0xff2C2C2C),
              height: 1.5,
            ),
          ),
          if (buttonText != null) ...[
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                iconColor: Color(0xff007BFF),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
