import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Contact Us',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold))),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Visit our office',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Phoenix Square, 4 Midland Street, Leicester, LE1 1TG, Leicestershire England, UK',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Contact Info',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '0116 216 1714',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            Text(
              'info@techchaps.com',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
