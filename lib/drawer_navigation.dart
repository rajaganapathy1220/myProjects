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
    return Drawer(
      backgroundColor: Colors.red,
      child: ListView(
        children: [
           UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nature SK.png'),
                fit: BoxFit.cover,
              //  alignment: Alignment(5, 7),
           // filterQuality: FilterQuality.low,
         //       opacity: double.negativeInfinity,
              ),
            ),
            accountName: Text('Author Quotes'),
            accountEmail: Text('Version1.0.0'),


            currentAccountPicture: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                // child: ClipOval(
                //  child: Image(
                radius: 30,
                backgroundImage: AssetImage('images/sudeep.png'),
                         //   foregroundColor: Colors.blue,

              ),
            ),
          ),
          //   ),
          // ),
          ListTile(
            leading: Icon(
              Icons.format_quote_sharp,
              color: Colors.deepPurple,
            ),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => MyProfile()));
            },
          ),
        ],
      ),
    );
  }
}
