import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/size_config.dart';
import 'landing_desktop.dart';
import 'landing_mobile.dart';
import 'landing_tablet.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/bg.png',
        ),
        fit: BoxFit.cover,
      )),
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
      child: Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.width_5),
        ),
        clipBehavior: Clip.antiAlias,
        child: GlassContainer(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Color(0x66D9D9D9).withAlpha(47),
          borderColor: Colors.transparent,
          child: ScreenTypeLayout(
            mobile: const LandingMobile(),
            tablet: const LandingTablet(),
            desktop: const LandingDesktop(),
          ),
        ),
      ),
    ));
  }
}
