// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:second_opi/Models/specialists_model.dart';
import 'package:second_opi/Models/topDoctors_model.dart';
import 'package:second_opi/Models/discover_section.dart';
import 'package:second_opi/pages/bookingPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState  extends State<HomePage> {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {
            _scrollController.animateTo(
              0.0,
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut,
            );
          },
          child: RichText(
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
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {},
          ),
        ],
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
              onTap: () {},
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
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
        Container(
        color: Colors.blue[800],
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Unlock peace of mind with Second Opinion',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Your getaway to expert medical advice. Instant second Opinions through secure tele-consultations. Your health, your control.',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context ,
                              MaterialPageRoute(builder: (context) =>  BookingPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: Text(
                            'Book An Appointment',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  'assets/images/Doctor1.png',
                  width: 200,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color(0xff1d1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0,
                )
              ]),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(15),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Icon(Icons.search),
                    ),
                    suffixIcon: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          VerticalDivider(
                            color: Colors.grey[300],
                            indent: 10,
                            endIndent: 10,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Icon(Icons.filter_list),
                          ),
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 20),
            topDoctors(),
            SizedBox(height: 20),
            SpecialistsSection(),
            SizedBox(height: 20),
            DiscoverSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}


// top doctors
Container topDoctors(){
  return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Top Doctors',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DoctorCard(
                  image: 'assets/images/doctor2.png',
                  name: 'Dr. Sara Ali Khan',
                  description: 'Expert in cardiology with over 20 years of experience.',
                ),
                DoctorCard(
                  image: 'assets/images/doctor3.png',
                  name: 'Dr. Sara Ali Khan',
                  description: 'Renowned neurologist known for her patient-centered approach.',
                ),
                DoctorCard(
                  image: 'assets/images/Doctor4.png',
                  name: 'Dr. Sara Ali Khan',
                  description: 'Renowned neurologist known for her patient-centered approach.',
                ),
                DoctorCard(
                  image: 'assets/images/doctor5.png',
                  name: 'Dr. Sara Ali Khan',
                  description: 'Renowned neurologist known for her patient-centered approach.',
                ),
              ],
            ),
          ),
        ],
      ),
  );
}
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFC5DCFF),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'SECOND OPI',
                  style: TextStyle(
                    color: Color(0xFF10015C),
                    fontFamily: 'Aclonica',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildColumn(
                [
                  _buildLink('Home'),
                  _buildLink('Contact Us'),
                  _buildLink('Blog'),
                  _buildLink('Terms of Service'),
                  _buildLink('Privacy Policy'),
                  _buildLink('Refund Policy'),
                ],
              ),
              _buildColumn(
                [
                  _buildHeading('Find care'),
                  _buildList(['Bangalore', 'Mumbai', 'Delhi', 'Ahmedabad', 'Indore']),
                ],
              ),
              _buildColumn(
                [
                  _buildHeading('Top Specialties'),
                  _buildList(['Therapist']),
                ],
              ),
              _buildColumn(
                [
                  _buildHeading('Chota Hospital (P) Ltd'),
                  _buildParagraph('WeWork, DLF Forum, Cybercity, Phase III, Gurugram, Haryana 122002'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildColumn(List<Widget> children) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }

  Widget _buildLink(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  Widget _buildHeading(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((item) => Text(
        item,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
      ))
          .toList(),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}