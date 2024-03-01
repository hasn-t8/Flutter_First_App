import 'package:flutter/material.dart';
import 'package:techchaps/screens/GalleryPage.dart';

class LogoutPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logout',style: TextStyle(fontWeight: FontWeight.bold ),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Logout Page',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryPage()),
                );
              },
              child: const Text('Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}