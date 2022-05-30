import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../env.dart';
import '../../utils/size_config.dart';
import 'landing_desktop.dart';
import 'landing_mobile.dart';
import 'landing_tablet.dart';
import 'mobile_drawer.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer:
              MediaQuery.of(context).size.width < 760 ? MobileDrawer() : null,
          extendBodyBehindAppBar: true,
          appBar: SizeConfig.isMobilePortrait
              ? MobileAppBarWidget(
                  preferredSiz:
                      Size(SizeConfig.screenWidth, SizeConfig.height_5),
                )
              : null,
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bg.png',
                    ),
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.none)),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.width_7, vertical: SizeConfig.height_4),
            child: Card(
              color: Colors.white.withOpacity(0.20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeConfig.width_5),
              ),
              clipBehavior: Clip.antiAlias,
              child: GlassContainer(
                height: double.maxFinite,
                width: double.maxFinite,
                color: AppBase.primaryColor.withAlpha(50),
                borderColor: Colors.white.withOpacity(0.15),
                child: ScreenTypeLayout(
                  mobile: const LandingMobile(),
                  tablet: const LandingTablet(),
                  desktop: const LandingDesktop(),
                ),
              ),
            ),
          )),
    );
  }
}
