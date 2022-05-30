import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_landing_page/utils/size_config.dart';

import '../../env.dart';
import '../../widget/blur_circle_widget.dart';

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
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  right: SizeConfig.width_40,
                  top: SizeConfig.height_3,
                  child: BlurCircleWidget(
                    size: SizeConfig.imgSize_25,
                  )),
              Column(
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
                  Container(
                    width: SizeConfig.width_70,
                    child: Text(
                      AppBase.shoeDesc,
                      style: GoogleFonts.roboto(
                        color: AppBase.descTextColor,
                        fontSize: SizeConfig.fs_2,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Row()
            ],
          )),
        ],
      ),
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
              debugPrint('Tapped');
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
