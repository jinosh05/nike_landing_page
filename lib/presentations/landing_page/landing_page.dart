import 'package:flutter/material.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_desktop.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_mobile.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/bg.png',
        ),
        fit: BoxFit.cover,
      )),
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
      child: ScreenTypeLayout(
        mobile: const LandingMobile(),
        tablet: const LandingTablet(),
        desktop: const LandingDesktop(),
      ),
    ));
  }
}
