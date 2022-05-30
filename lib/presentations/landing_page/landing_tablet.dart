import 'package:flutter/material.dart';
import 'package:nike_landing_page/utils/size_config.dart';

import '../../env.dart';

class LandingTablet extends StatefulWidget {
  const LandingTablet({Key? key}) : super(key: key);

  @override
  State<LandingTablet> createState() => _LandingTabletState();
}

class _LandingTabletState extends State<LandingTablet> {
  List<bool> _hover = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.height_1_5,
        ),
        Row(
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
                  style: TextStyle(
                    color: _hover[i] ? Colors.pink : Colors.white,
                    fontSize: SizeConfig.fs_1_2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            SizedBox(),
          ],
        )
      ],
    );
  }
}
