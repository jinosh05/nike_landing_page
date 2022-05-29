import 'package:responsive_builder/responsive_builder.dart';

void main(List<String> args) {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 780, tablet: 480, watch: 200),
  );
}
