import 'dart:io';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapps/app_data_image.dart';
import 'package:flutterapps/app_data_text.dart';
import 'package:flutterapps/display_image.dart';
import 'package:flutterapps/drawer_navigation.dart';
import 'package:flutterapps/indicator_image.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

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
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 1) {
                _share();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
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

  _share() async {
    print('----Image');
    print(appDataImage[_selectedIndex].image);

    ByteData imagebyte =
        await rootBundle.load(appDataImage[_selectedIndex].image);
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/wb_1.png';
    File(path).writeAsBytes(imagebyte.buffer.asUint8List());
    await Share.shareFiles([path], text: 'Image Shared');
  }
}
