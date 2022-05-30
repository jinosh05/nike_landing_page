import 'package:flutter/material.dart';
import 'package:nike_landing_page/env.dart';

class BlurCircleWidget extends StatelessWidget {
  const BlurCircleWidget({
    Key? key,
    required this.size,
  }) : super(key: key);
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppBase.primaryColor.withAlpha(25),
          AppBase.primaryColor.withAlpha(40),
          AppBase.primaryColor.withAlpha(50),
          AppBase.primaryColor.withAlpha(60),
          AppBase.primaryColor.withAlpha(75),
          AppBase.primaryColor.withAlpha(90),
          AppBase.primaryColor.withAlpha(100),
          AppBase.primaryColor.withAlpha(110),
          AppBase.primaryColor.withAlpha(125),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        shape: BoxShape.circle,
        // color: Colors.white.withOpacity(0.12),
      ),
    );
  }
}
