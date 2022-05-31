import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../env.dart';
import '../utils/size_config.dart';

class GradiantButton extends StatelessWidget {
  const GradiantButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
    this.fSize,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final double? fSize;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: width ?? SizeConfig.width_25,
        height: height ?? SizeConfig.height_5,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.width_4,
          vertical: SizeConfig.height_1,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppBase.gradBlue,
                AppBase.gradPink,
              ],
            ),
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.inner,
                blurRadius: SizeConfig.height_1,
                color: Colors.white70,
                spreadRadius: -SizeConfig.height_2,
              ),
              BoxShadow(
                blurRadius: SizeConfig.height_1,
                color: Colors.white,
                spreadRadius: SizeConfig.height_0_1,
              ),
            ],
            borderRadius: BorderRadius.circular(SizeConfig.height_2)),
        child: Text(
          text,
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: fSize ?? SizeConfig.fs_1_2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
