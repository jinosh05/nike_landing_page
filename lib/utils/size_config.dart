import 'package:flutter/widgets.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static late double textMultiplier;
  static late double imageSizeMultiplier;
  static late double heightMultiplier;
  static late double widthMultiplier;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  static late double width_0_8,
      width_1,
      width_1_2,
      width_1_3,
      width_1_5,
      width_2,
      width_2_5,
      width_3,
      width_4,
      width_5,
      width_6,
      width_7,
      width_7_5,
      width_8,
      width_9,
      width_10,
      width_11,
      width_12,
      width_13,
      width_15,
      width_18,
      width_20,
      width_23,
      width_25,
      width_28,
      width_30,
      width_32,
      width_35,
      width_40,
      width_45,
      width_50,
      width_55,
      width_60,
      width_65,
      width_70,
      width_75,
      width_80,
      width_85,
      width_90;

  static late double height_0_1,
      height_0_2,
      height_0_3,
      height_0_5,
      height_0_8,
      height_1,
      height_1_3,
      height_1_5,
      height_1_6,
      height_1_7,
      height_1_8,
      height_2,
      height_2_5,
      height_3,
      height_3_3,
      height_3_5,
      height_4,
      height_4_5,
      height_5,
      height_6,
      height_7,
      height_7_5,
      height_7_8,
      height_8,
      height_9,
      height_9_3,
      height_9_4,
      height_9_6,
      height_9_8,
      height_10,
      height_10_2,
      height_11,
      height_11_5,
      height_12,
      height_13,
      height_14,
      height_15,
      height_16,
      height_17,
      height_18,
      height_19,
      height_20,
      height_22,
      height_23,
      height_25,
      height_27,
      height_28,
      height_29,
      height_30,
      height_32,
      height_33,
      height_35,
      height_36,
      height_37,
      height_40,
      height_42,
      height_44,
      height_45,
      height_50,
      height_60,
      height_70,
      height_80,
      height_90;

  static late double imgSize_1,
      imgSize_1_5,
      imgSize_1_8,
      imgSize_2,
      imgSize_2_5,
      imgSize_3,
      imgSize_3_5,
      imgSize_4,
      imgSize_4_5,
      imgSize_5,
      imgSize_5_5,
      imgSize_6,
      imgSize_7,
      imgSize_8,
      imgSize_9,
      imgSize_10,
      imgSize_12,
      imgSize_13,
      imgSize_15,
      imgSize_20,
      imgSize_25,
      imgSize_30,
      imgSize_35,
      imgSize_40,
      imgSize_60,
      imgSize_80;

  static late double fs_1_2,
      fs_1_3,
      fs_1_4,
      fs_1_5,
      fs_1_6,
      fs_1_7,
      fs_1_8,
      fs_1_9,
      fs_2,
      fs_2_2,
      fs_2_3,
      fs_2_5,
      fs_2_7,
      fs_03,
      fs_03_5,
      fs_04,
      fs_05,
      fs_06,
      fs_07,
      fs_08,
      fs_09,
      fs_10,
      fs_11,
      fs_12,
      fs_13,
      fs_14,
      fs_15,
      fs_16,
      fs_17,
      fs_18,
      fs_19,
      fs_20,
      fs_21,
      fs_22,
      fs_23,
      fs_24,
      fs_25;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      screenWidth = constraints.maxHeight;
      screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = screenWidth / 100;
    _blockHeight = screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;

    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;

    print('screen_width ' + screenWidth.toString());
    print('screen_height ' + screenHeight.toString());

    /* width */
    width_0_8 = widthMultiplier * 0.8;
    width_1 = widthMultiplier * 1;
    width_1_2 = widthMultiplier * 1.2;
    width_1_3 = widthMultiplier * 1.3;
    width_1_5 = widthMultiplier * 1.5;
    width_2 = widthMultiplier * 2;
    width_2_5 = widthMultiplier * 2.5;
    width_3 = widthMultiplier * 3;
    width_4 = widthMultiplier * 4;
    width_5 = widthMultiplier * 5;
    width_6 = widthMultiplier * 6;
    width_7 = widthMultiplier * 7;
    width_7_5 = widthMultiplier * 7.5;
    width_8 = widthMultiplier * 8;
    width_9 = widthMultiplier * 9;
    width_10 = widthMultiplier * 10;
    width_11 = widthMultiplier * 11;
    width_12 = widthMultiplier * 12;
    width_13 = widthMultiplier * 13;
    width_15 = widthMultiplier * 15;
    width_18 = widthMultiplier * 18;
    width_20 = widthMultiplier * 20;
    width_23 = widthMultiplier * 23;
    width_25 = widthMultiplier * 25;
    width_28 = widthMultiplier * 28;
    width_30 = widthMultiplier * 30;
    width_32 = widthMultiplier * 32;
    width_35 = widthMultiplier * 35;
    width_40 = widthMultiplier * 40;
    width_45 = widthMultiplier * 45;
    width_50 = widthMultiplier * 50;
    width_55 = widthMultiplier * 55;
    width_60 = widthMultiplier * 60;
    width_65 = widthMultiplier * 65;
    width_70 = widthMultiplier * 70;
    width_75 = widthMultiplier * 75;
    width_80 = widthMultiplier * 80;
    width_85 = widthMultiplier * 85;
    width_90 = widthMultiplier * 90;

    /* height */
    height_0_1 = heightMultiplier * 0.1;
    height_0_2 = heightMultiplier * 0.2;
    height_0_3 = heightMultiplier * 0.3;
    height_0_5 = heightMultiplier * 0.5;
    height_0_8 = heightMultiplier * 0.8;
    height_1 = heightMultiplier * 1.0;
    height_1_3 = heightMultiplier * 1.3;
    height_1_5 = heightMultiplier * 1.5;
    height_1_6 = heightMultiplier * 1.6;
    height_1_7 = heightMultiplier * 1.7;
    height_1_8 = heightMultiplier * 1.8;
    height_2 = heightMultiplier * 2.0;
    height_2_5 = heightMultiplier * 2.5;
    height_3 = heightMultiplier * 3.0;
    height_3_3 = heightMultiplier * 3.3;
    height_3_5 = heightMultiplier * 3.5;
    height_4 = heightMultiplier * 4.0;
    height_4_5 = heightMultiplier * 4.5;
    height_5 = heightMultiplier * 5.0;
    height_6 = heightMultiplier * 6.0;
    height_7 = heightMultiplier * 7.0;
    height_7_5 = heightMultiplier * 7.5;
    height_7_8 = heightMultiplier * 7.8;
    height_8 = heightMultiplier * 8.0;
    height_9 = heightMultiplier * 9.0;
    height_9_3 = heightMultiplier * 9.3;
    height_9_4 = heightMultiplier * 9.4;
    height_9_6 = heightMultiplier * 9.6;
    height_9_8 = heightMultiplier * 9.8;
    height_10 = heightMultiplier * 10.0;
    height_10_2 = heightMultiplier * 10.2;
    height_11 = heightMultiplier * 11.0;
    height_11_5 = heightMultiplier * 11.5;
    height_12 = heightMultiplier * 12.0;
    height_13 = heightMultiplier * 13.0;
    height_14 = heightMultiplier * 14.0;
    height_15 = heightMultiplier * 15.0;
    height_16 = heightMultiplier * 16.0;
    height_17 = heightMultiplier * 17.0;
    height_18 = heightMultiplier * 18.0;
    height_19 = heightMultiplier * 19.0;
    height_20 = heightMultiplier * 20.0;
    height_22 = heightMultiplier * 22.0;
    height_23 = heightMultiplier * 23.0;
    height_25 = heightMultiplier * 25.0;
    height_27 = heightMultiplier * 27.0;
    height_28 = heightMultiplier * 28.0;
    height_29 = heightMultiplier * 29.0;
    height_30 = heightMultiplier * 30.0;
    height_32 = heightMultiplier * 32.0;
    height_33 = heightMultiplier * 33.0;
    height_35 = heightMultiplier * 35.0;
    height_36 = heightMultiplier * 36.0;
    height_37 = heightMultiplier * 37.0;
    height_40 = heightMultiplier * 40.0;
    height_42 = heightMultiplier * 42.0;
    height_44 = heightMultiplier * 44.0;
    height_45 = heightMultiplier * 45.0;
    height_50 = heightMultiplier * 50.0;
    height_60 = heightMultiplier * 60.0;
    height_70 = heightMultiplier * 70.0;
    height_80 = heightMultiplier * 80.0;
    height_90 = heightMultiplier * 90.0;

    /* Image Size */
    imgSize_1 = imageSizeMultiplier * 1.0;
    imgSize_1_5 = imageSizeMultiplier * 1.5;
    imgSize_1_8 = imageSizeMultiplier * 1.8;
    imgSize_2 = imageSizeMultiplier * 2.0;
    imgSize_2_5 = imageSizeMultiplier * 2.5;
    imgSize_3 = imageSizeMultiplier * 3.0;
    imgSize_3_5 = imageSizeMultiplier * 3.5;
    imgSize_4 = imageSizeMultiplier * 4.0;
    imgSize_4_5 = imageSizeMultiplier * 4.5;
    imgSize_5 = imageSizeMultiplier * 5.0;
    imgSize_5_5 = imageSizeMultiplier * 5.5;
    imgSize_6 = imageSizeMultiplier * 6.0;
    imgSize_7 = imageSizeMultiplier * 7.0;
    imgSize_8 = imageSizeMultiplier * 8.0;
    imgSize_9 = imageSizeMultiplier * 9.0;
    imgSize_10 = imageSizeMultiplier * 10.0;
    imgSize_12 = imageSizeMultiplier * 12.0;
    imgSize_13 = imageSizeMultiplier * 13.0;
    imgSize_15 = imageSizeMultiplier * 15.0;
    imgSize_20 = imageSizeMultiplier * 20.0;
    imgSize_25 = imageSizeMultiplier * 25.0;
    imgSize_30 = imageSizeMultiplier * 30.0;
    imgSize_35 = imageSizeMultiplier * 35.0;
    imgSize_40 = imageSizeMultiplier * 40.0;
    imgSize_60 = imageSizeMultiplier * 60.0;
    imgSize_80 = imageSizeMultiplier * 80.0;

    /* font size */
    fs_1_2 = textMultiplier * 1.2;
    fs_1_3 = textMultiplier * 1.3;
    fs_1_4 = textMultiplier * 1.4;
    fs_1_5 = textMultiplier * 1.5;
    fs_1_6 = textMultiplier * 1.6;
    fs_1_7 = textMultiplier * 1.7;
    fs_1_8 = textMultiplier * 1.8;
    fs_1_9 = textMultiplier * 1.9;
    fs_2 = textMultiplier * 2;
    fs_2_2 = textMultiplier * 2.2;
    fs_2_3 = textMultiplier * 2.3;
    fs_2_5 = textMultiplier * 2.5;
    fs_2_7 = textMultiplier * 2.7;
    fs_03 = textMultiplier * 3;
    fs_03_5 = textMultiplier * 3.5;
    fs_04 = textMultiplier * 4;
    fs_05 = textMultiplier * 5;
    fs_06 = textMultiplier * 6;
    fs_07 = textMultiplier * 7;
    fs_08 = textMultiplier * 8;
    fs_09 = textMultiplier * 9;
    fs_10 = textMultiplier * 10;
    fs_11 = textMultiplier * 11;
    fs_12 = textMultiplier * 12;
    fs_13 = textMultiplier * 13;
    fs_14 = textMultiplier * 14;
    fs_15 = textMultiplier * 15;
    fs_16 = textMultiplier * 16;
    fs_17 = textMultiplier * 17;
    fs_18 = textMultiplier * 18;
    fs_19 = textMultiplier * 19;
    fs_20 = textMultiplier * 20;
    fs_21 = textMultiplier * 21;
    fs_22 = textMultiplier * 22;
    fs_23 = textMultiplier * 23;
    fs_24 = textMultiplier * 24;
    fs_25 = textMultiplier * 25;
  }
}
