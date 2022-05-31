import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_landing_page/utils/size_config.dart';

import '../../env.dart';
import '../../widget/blur_circle_widget.dart';
import '../../widget/gradient_button.dart';

class LandingDesktop extends StatefulWidget {
  const LandingDesktop({Key? key}) : super(key: key);

  @override
  State<LandingDesktop> createState() => _LandingDesktopState();
}

class _LandingDesktopState extends State<LandingDesktop> {
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
          Expanded(
              child: Stack(
            children: [
              Positioned(
                right: SizeConfig.width_35,
                top: SizeConfig.height_3,
                child: BlurCircleWidget(
                  size: SizeConfig.imgSize_25 + SizeConfig.imgSize_2_5,
                ),
              ),
              detailsColumn(),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  'assets/shoe.png',
                  height: SizeConfig.imgSize_80,
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: BlurCircleWidget(
                    size: SizeConfig.imgSize_20 + SizeConfig.imgSize_2_5,
                  )),
              Positioned(
                right: SizeConfig.width_40,
                bottom: SizeConfig.height_3,
                child: BlurCircleWidget(
                  size: SizeConfig.imgSize_20,
                ),
              ),
            ],
          )),
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
            fontSize: SizeConfig.fs_11,
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
        Container(
          width: SizeConfig.width_70,
          child: Text(
            AppBase.shoeDesc,
            style: GoogleFonts.roboto(
              color: AppBase.descTextColor,
              fontSize: SizeConfig.fs_1_7,
              fontWeight: FontWeight.w600,
              height: 1.3,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.height_2_5,
        ),
        GradiantButton(
          text: AppBase.addToCart,
          height: SizeConfig.height_3_5,
          onPressed: () {
            debugPrint('Pressed Add to Cart');
            print('Desktop View');
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
              debugPrint('Tapped Desktop');
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
                fontSize: SizeConfig.fs_1_2,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        SizedBox(),
      ],
    );
  }
}
