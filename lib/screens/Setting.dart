import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget
{
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text("Setting page"),backgroundColor: Colors.blue),
      body: const Center(
        child: Text("This is Setting Page"),
      ),
    );
  }
}