import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter your payment details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Card Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Cardholder Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'MM/YYYY',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.datetime,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    maxLength: 3,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.blue[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Payment Details',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Text('Session fee: \$200'),
                  Text('Taxes: \$2'),
                  Divider(),
                  Text(
                    'Total fee: \$202',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[700],
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                // Logic for confirming payment can be added here
              },
              child: Text(
                'Confirm Payment',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
