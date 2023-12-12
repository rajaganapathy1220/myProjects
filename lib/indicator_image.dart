import 'package:flutter/material.dart';


class IndicatorImage extends StatelessWidget {
  final bool isActive;
  const IndicatorImage({super.key,  required this.isActive});

  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(duration: Duration(milliseconds: 400),
    height: 10,
      width: isActive ? 20 : 10,
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: isActive ? Colors.red : Colors.blueGrey,
        borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}

