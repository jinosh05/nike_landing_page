import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class BlurCircleWidget extends StatelessWidget {
  const BlurCircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.imgSize_30,
      width: SizeConfig.imgSize_30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.12),
      ),
    );
  }
}
