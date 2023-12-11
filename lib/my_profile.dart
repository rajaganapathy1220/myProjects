import 'package:flutter/material.dart';
import 'package:flutterapps/drawer_navigation.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        iconTheme: IconThemeData(
          color: Colors.white70,
        ),
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 30,
            color: Colors.white70,
          ),
        ),
      ),
      body: const SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Raja Ganapathy',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.indigoAccent,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.indigoAccent,
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: Divider(
                color: Colors.indigoAccent,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Icon(
                  Icons.phone_android,
                  color: Colors.deepPurpleAccent,
                ),
                title: Text(
                  '9360261781',
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                leading: Icon(
                  Icons.email_outlined,
                  color: Colors.deepPurple,
                ),
                title: Text('rajaganapathy.d.t@gmail.com',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
