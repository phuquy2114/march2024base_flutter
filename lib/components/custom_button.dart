import 'package:flutter/material.dart';
import '../resources/app_color.dart';
import '../resources/app_style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color colorText;
  final Color? colorBorder;
  final Color? backgroundColors;
  final double? width;
  final double? height;
  final double? borderRadius;
  final double? fontTextSize;
  final TextStyle? textStyle;

  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.colorText,
      this.backgroundColors,
      this.width,
      this.borderRadius,
      this.textStyle,
      this.fontTextSize,
      this.height,
      this.colorBorder});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height ?? 56.0,
        alignment: Alignment.center,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
            color: backgroundColors ?? AppColor.hFFFFFF,
            borderRadius: BorderRadius.circular(borderRadius ?? 30.0),
            border:
                Border.all(color: colorBorder ?? AppColor.h005FC7, width: 2)),
        child: Text(
          text,
          style: textStyle ??
              AppStyle.h16SemiBold
                  .copyWith(color: colorText, fontSize: fontTextSize ?? 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
