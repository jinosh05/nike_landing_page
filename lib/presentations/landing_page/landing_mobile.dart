import 'package:flutter/material.dart';

import '../../utils/size_config.dart';
import '../../widget/blur_circle_widget.dart';

class LandingMobile extends StatelessWidget {
  const LandingMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.width_2) +
          EdgeInsets.only(right: SizeConfig.width_1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: SizeConfig.height_35,
            child: Stack(
              children: [
                Positioned(
                  right: SizeConfig.width_30,
                  top: SizeConfig.height_3,
                  child: BlurCircleWidget(
                    size: SizeConfig.imgSize_15 + SizeConfig.imgSize_2_5,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/shoe.png',
                    height: SizeConfig.imgSize_80,
                    width: SizeConfig.width_80,
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: BlurCircleWidget(
                      size: SizeConfig.imgSize_15,
                    )),
                Positioned(
                  right: SizeConfig.width_35,
                  bottom: SizeConfig.height_4,
                  child: BlurCircleWidget(
                    size: SizeConfig.imgSize_13,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
