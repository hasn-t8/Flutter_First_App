import 'package:flutter/material.dart';
import 'package:techchaps/screens/GalleryPage.dart';

class AboutUsPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Our Projects',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "We've worked with businesses of all sizes and varying industries to deliver innovative, bespoke digital solutions that set their company ahead of their competitors.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              "We are a software agency based in the UK and have been utilising technology to drive growth and innovation in businesses since 2014. Our mission is to empower businesses with cutting-edge digital solutions.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              "We invest in innovation in order to do this, so you can have the best possible software solutions. We are a full-service agency, meaning our clients experience a seamless journey from concept to deployment with our end-to-end software services. Whether you're at the inception stage, mid-development, or seeking enhancements for an existing project, TechChaps seamlessly integrates into your business. We work as an extended team of your company, as your digital partner.",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GalleryPage()),
                  );
                },
                child: const Text('View Gallery'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

