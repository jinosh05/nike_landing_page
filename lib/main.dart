import 'package:responsive_builder/responsive_builder.dart';

void main(List<String> args) {
  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 800, tablet: 550, watch: 200),
  );
}
