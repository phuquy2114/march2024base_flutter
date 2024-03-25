import 'dart:io';

import 'package:flutter/material.dart';

import 'app_font_size.dart';
import 'app_fonts.dart';

class Styles {
  static const String hiraginoKakuGothicPro = 'Hiragino Kaku Gothic Pro W3';
  static const String notoSans = 'NotoSans';

  static TextStyle buttonLabel = TextStyle(
      fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      color: Colors.white);

  static TextStyle msgBadgeLabel = TextStyle(
      fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
      fontWeight: FontWeight.bold,
      fontSize: 8.0,
      color: Colors.white);

  static TextStyle n08 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 8.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n09 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 9.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n10 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.bold,
    fontSize: 10.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n10v2 = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 10.0,
    color: Colors.black,
  );

  static TextStyle n11 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w600,
    fontSize: 11.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n12 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n12v2 = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    color: Colors.black,
  );

  static TextStyle b12 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w900,
    fontSize: 12.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n13 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 13.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n14 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 14.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n14v2 = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14.0,
    color: Colors.black,
  );

  static TextStyle n18 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle b14 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w900,
    fontSize: 14.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n15 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 15.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n16 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 16.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );
  static TextStyle n145 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 14.5,
    color: Colors.black,
    height: 1,
    letterSpacing: 0,
  );

  static TextStyle n16v2 = const TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16.0,
    color: Colors.black,
  );

  static TextStyle n17 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 17.0,
    color: Colors.black,
    letterSpacing: 0,
  );

  static TextStyle b16V2 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 16.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle b16 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n20 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 20.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static TextStyle n24 = TextStyle(
    fontFamily: Platform.isAndroid ? notoSans : hiraginoKakuGothicPro,
    fontWeight: FontWeight.w300,
    fontSize: 24.0,
    color: Colors.black,
    height: 1,
    letterSpacing: 1,
  );

  static const TextStyle headline1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 34,
  );
  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
  );

  static const TextStyle weight400 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle weight500 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle weight600 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle labelBold6 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font6,
  );

  static const TextStyle labelMedium6 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font6,
  );

  static const TextStyle labelRegular6 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font6,
  );

  static const TextStyle labelBold8 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font8,
  );

  static const TextStyle labelMedium8 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font8,
  );

  static const TextStyle labelRegular8 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font8,
  );

  static const TextStyle labelBold10 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font10,
  );

  static const TextStyle labelMedium10 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font10,
  );

  static const TextStyle labelRegular10 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font10,
  );

  static const TextStyle labelBold11 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font11,
  );

  static const TextStyle labelMedium11 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font11,
  );

  static const TextStyle labelRegular11 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font11,
  );

  static const TextStyle labelBold12 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font12,
  );

  static const TextStyle labelMedium12 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font12,
  );

  static const TextStyle labelRegular12 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font12,
  );

  static const TextStyle labelBold13 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font13,
  );

  static const TextStyle labelMedium13 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font13,
  );

  static const TextStyle labelRegular13 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font13,
  );

  static const TextStyle labelBold14 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font14,
  );

  static const TextStyle labelMedium14 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font14,
  );

  static const TextStyle labelRegular14 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font14,
  );

  static const TextStyle labelMedium15 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font15,
  );

  static const TextStyle labelBold16 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font16,
  );

  static const TextStyle labelMedium16 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font16,
  );

  static const TextStyle labelRegular16 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font16,
  );

  static const TextStyle labelBold18 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font18,
  );

  static const TextStyle labelMedium18 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font18,
  );

  static const TextStyle labelBold20 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font20,
  );

  static const TextStyle labelBold22 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font22,
  );
  static const TextStyle labelMedium20 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font20,
  );

  static const TextStyle labelRegular20 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font20,
  );

  static const TextStyle labelLarge24 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w700,
    fontSize: AppFontSize.font24,
  );

  static const TextStyle labelBold24 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w700,
    fontSize: AppFontSize.font24,
  );

  static const TextStyle labelBold26 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w800,
    fontSize: AppFontSize.font26,
  );

  static const TextStyle labelMedium24 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font24,
  );

  static const TextStyle labelRegular24 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font24,
  );

  static const TextStyle labelBold27 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font27,
  );

  static const TextStyle labelMedium27 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font27,
  );

  static const TextStyle labelRegular27 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font27,
  );

  static const TextStyle labelBold32 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font32,
  );

  static const TextStyle labelMedium32 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font32,
  );

  static const TextStyle labelRegular32 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font32,
  );

  static const TextStyle labelBold36 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w700,
    fontSize: AppFontSize.font36,
  );

  static const TextStyle labelBold40 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w600,
    fontSize: AppFontSize.font40,
  );

  static const TextStyle labelMedium40 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.font40,
  );

  static const TextStyle labelRegular40 = TextStyle(
    fontFamily: AppFonts.lato,
    fontWeight: FontWeight.w400,
    fontSize: AppFontSize.font40,
  );
}
