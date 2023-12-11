import 'package:flutter/material.dart';
import 'package:flutterapps/company_profile.dart';
import 'package:flutterapps/my_profile.dart';
import 'package:flutterapps/page_view_image.dart';
import 'package:flutterapps/page_view_text.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return
      Drawer(
      backgroundColor: Colors.red,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red
            ),
            accountName: Text('Author Quotes'),
            accountEmail: Text('Version1.0.0'),
            currentAccountPicture: CircleAvatar(

             // child: ClipOval(
             //  child: Image(
                backgroundImage: AssetImage('images/sudeep.png'),
              ),
              ),
          //   ),
          // ),
          ListTile(
            title: const Text(
              'Quotes Text',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PageViewText()));
            },
          ),
          ListTile(
            title: Text(
              'Quotes Image',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PageViewImage()));
            },
          ),
          ListTile(
            title: Text(
              'Company Profile',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
          ListTile(
            title: Text(
              'Developer Profile',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyProfile()));
            },
          ),
        ],
      ),
    );
  }
}
