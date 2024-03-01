import 'package:flutter/material.dart';
import 'package:techchaps/screens/Setting.dart';
import 'package:techchaps/screens/about_us.dart';
import 'package:techchaps/screens/contact_us.dart';
import 'package:techchaps/screens/home.dart';
import 'package:techchaps/screens/Logout.dart';

class MainDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Drawer(
          child: Column(
              children:<Widget> [
                Container(
                    color: Theme.of(context).primaryColor,
                    width: double.infinity,
                    child: Column(
                        children:<Widget> [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 80,
                            height: 150,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://tricky-photoshop.com/wp-content/uploads/2017/08/final-1.png")
                                )
                            ),
                          ),
                          const Text(
                            "Hassan Talha",
                            style: TextStyle(
                                fontSize: 26,
                                color: Colors.white
                            ),
                          )
                        ]
                    )
                ),
                ListTile(
                  title: Text("Home",style: TextStyle(fontSize:25),),
                  leading: Icon(Icons.home),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                ListTile(
                  title: Text("Contact_us",style: TextStyle(fontSize:25),),
                  leading: Icon(Icons.contact_emergency),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contact()));
                  },
                ),
                ListTile(
                  title: Text("About_us",style: TextStyle(fontSize:25),),
                  leading: Icon(Icons.details),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AboutUsPage()));
                  },
                ),
                ListTile(
                  title: Text("Setting",style: TextStyle(fontSize:25),),
                  leading: Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingPage()));
                  },
                ),
                ListTile(
                  title: Text("Logout",style: TextStyle(fontSize:25),),
                  leading: Icon(Icons.logout),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogoutPage()));
                  },
                ),
              ]

          )
      ),
    );
  }

}

