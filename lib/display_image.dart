import 'package:flutter/material.dart';
import 'package:flutterapps/app_data_image.dart';

class DisplayImage extends StatelessWidget {
  final AppDataImage appDataImage;

  const DisplayImage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage(appDataImage.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
