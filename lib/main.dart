import 'package:flutter/material.dart';
import 'package:techchaps/screens/contact_us.dart';
import 'package:techchaps/screens/home.dart';
import 'package:techchaps/screens/about_us.dart';
import 'package:techchaps/widget/bottom_navigation_bar.dart';
import 'package:techchaps/widget/maindrawer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TechChaps',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  @override
   _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    AboutUsPage(),
    Contact(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('TechChaps',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      drawer:MainDrawer(),
      body: _screens[_currentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

