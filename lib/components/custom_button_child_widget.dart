import 'package:flutter/material.dart';
import '../resources/app_color.dart';
import '../resources/app_style.dart';

class CustomButtonChildWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? backgroundColors;
  final double? width;
  final double? height;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Border? border;

  const CustomButtonChildWidget(
      {super.key,
      required this.onPressed,
      this.backgroundColors,
      this.width,
      this.borderRadius,
      this.textStyle,
      this.height,
      required this.child,
      this.border});

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
            border: border ?? Border.all(color: AppColor.h005FC7, width: 2)),
        child: Center(child: child),
      ),
    );
  }
}
