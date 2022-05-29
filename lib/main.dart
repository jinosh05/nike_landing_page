import 'package:flutter/material.dart';
import 'package:nike_landing_page/presentations/landing_page/landing_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main(List<String> args) {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 780, tablet: 480, watch: 200),
  );
  runApp(const LandingPage());
}
