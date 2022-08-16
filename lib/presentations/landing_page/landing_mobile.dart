import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../env.dart';
import '../../utils/size_config.dart';
import '../../widget/blur_circle_widget.dart';
import '../../widget/gradient_button.dart';

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
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.height_3),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: BlurCircleWidget(
                      size: SizeConfig.imgSize_15 + SizeConfig.imgSize_2_5,
                    ),
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
          ),
          detailsColumn(),
        ],
      ),
    );
  }

  Column detailsColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppBase.shoeName,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: SizeConfig.fs_05,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          AppBase.shoePrice,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: SizeConfig.fs_03,
            fontWeight: FontWeight.w900,
          ),
        ),
        SizedBox(
          height: SizeConfig.height_1_5,
        ),
        Text(
          AppBase.shoeDesc,
          style: GoogleFonts.roboto(
            color: AppBase.descTextColor,
            fontSize: SizeConfig.fs_1_8,
            fontWeight: FontWeight.w600,
            height: 1.3,
          ),
        ),
        SizedBox(
          height: SizeConfig.height_2_5,
        ),
        GradiantButton(
          text: AppBase.addToCart,
          width: SizeConfig.width_80,
          height: SizeConfig.height_5,
          fSize: SizeConfig.fs_2,
          onPressed: () {
            debugPrint('Pressed Add to Cart');
            print('Mobile View');
          },
        )
      ],
    );
  }
}
