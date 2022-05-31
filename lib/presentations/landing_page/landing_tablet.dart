import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_landing_page/utils/size_config.dart';

import '../../env.dart';
import '../../widget/blur_circle_widget.dart';
import '../../widget/gradient_button.dart';

class LandingTablet extends StatefulWidget {
  const LandingTablet({Key? key}) : super(key: key);

  @override
  State<LandingTablet> createState() => _LandingTabletState();
}

class _LandingTabletState extends State<LandingTablet> {
  List<bool> _hover = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
            SizeConfig.height_1_5,
          ) +
          EdgeInsets.only(left: SizeConfig.width_1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(),
          SizedBox(
            height: SizeConfig.height_2,
          ),
          Container(
            height: SizeConfig.height_40,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: SizeConfig.height_1,
                  child: BlurCircleWidget(
                    size: SizeConfig.imgSize_15 + SizeConfig.imgSize_2_5,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/shoe.png',
                    ),
                    Positioned(
                        right: SizeConfig.width_1,
                        child: BlurCircleWidget(
                          size: SizeConfig.imgSize_15,
                        )),
                  ],
                ),
                Positioned(
                  bottom: SizeConfig.height_2,
                  child: BlurCircleWidget(
                    size: SizeConfig.imgSize_13,
                  ),
                ),
              ],
            ),
          ),
          detailsColumn()
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

  Row appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(),
        for (var i = 0; i < AppBase.headings.length; i++)
          InkWell(
            onTap: () {
              debugPrint('Tapped tablet');
            },
            onHover: (bool value) {
              setState(() {
                _hover[i] = value;
              });
            },
            child: Text(
              AppBase.headings[i],
              style: GoogleFonts.roboto(
                color: _hover[i] ? Colors.pink : Colors.white,
                fontSize: SizeConfig.fs_1_4,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        SizedBox(),
      ],
    );
  }
}
