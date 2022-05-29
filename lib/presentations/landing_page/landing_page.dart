import 'package:flutter/material.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_mobile.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const LandingMobile(),
      tablet: const LandingTablet(),
    );
  }
}
