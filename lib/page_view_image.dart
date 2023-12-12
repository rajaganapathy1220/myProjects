import 'package:flutter/material.dart';
import 'package:flutterapps/app_data_image.dart';
import 'package:flutterapps/app_data_text.dart';
import 'package:flutterapps/display_image.dart';
import 'package:flutterapps/drawer_navigation.dart';
import 'package:flutterapps/indicator_image.dart';

class PageViewImage extends StatefulWidget {
  const PageViewImage({super.key});

  @override
  State<PageViewImage> createState() => _PageViewImageState();
}

class _PageViewImageState extends State<PageViewImage> {
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
        title: const Text(
          'Warren Buffet Qoutes',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                  print(index);
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: appDataImage.length,
              itemBuilder: (context, index) {
                var text = appDataText[index];
                var scale = _selectedIndex == index ? 1.0 : 0.8;
                return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(milliseconds: 400),
                    child: DisplayImage(appDataImage: appDataImage[index]),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    });
                return DisplayImage(appDataImage: appDataImage[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataImage.length,
                    (index) => IndicatorImage(
                        isActive: _selectedIndex == index ? true : false)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
