import 'package:flutter/material.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'utils/size_config.dart';

void main(List<String> args) {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 780, tablet: 480, watch: 200),
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            SizeConfig().init(constraints, orientation);
            return LandingPage();
          },
        );
      },
    ),
  ));
}
