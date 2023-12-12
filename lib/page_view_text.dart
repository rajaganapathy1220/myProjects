import 'package:flutter/material.dart';
import 'package:flutterapps/app_data_text.dart';
import 'package:flutterapps/display_text.dart';
import 'package:flutterapps/drawer_navigation.dart';

class PageViewText extends StatefulWidget {
  const PageViewText({super.key});

  @override
  State<PageViewText> createState() => _State();
}

class _State extends State<PageViewText> {
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavigation(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(
          color: Colors.white70,
        ),
        title: Text(
          'Sudeep Nagarkar Quotes',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 250,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                    print(index);
                  });
                },
              controller: PageController(viewportFraction: 0.7),
                itemCount: appDataText.length,
                itemBuilder: (context, index) {

                  var text = appDataText[index];
                  var scale = _selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                      tween: Tween(begin: scale, end: scale),
                      duration: Duration(milliseconds: 400),
                      child: DisplayText(appDataText: appDataText[index]),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value,
                          child: child,
                        );
                      });
                },), ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Text(
                    (_selectedIndex + 1).toString() +
                        '/' +
                        appDataText.length.toString(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
