import 'package:flutter/material.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Company Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(50),
                      child: Image.asset('images/subi.jpg'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Web and Mobile \nApp developments',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
                width: 350,
                child: Divider(
                  color: Colors.blueAccent,
                  thickness: 2,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      ' 9360261781',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email_outlined,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      ' rajaganapathy.d.t@gmail.com',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.web,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      ' info@subisoftware.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.location_on,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      ' N.25/11,2nd Floor,\n 1st Cross Street,New Colony,\n Chrompet,Chennai,\n Tamilnadu,India-600 044',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}