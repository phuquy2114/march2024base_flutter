import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../resources/app_color.dart';

class CustomSpinnerWidget extends StatefulWidget {
  final String? hint;
  final TextEditingController controller;
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final TextInputType? inputType;
  final Function? onTap;
  final Function onChanged;

  const CustomSpinnerWidget(
      {super.key,
      required this.controller,
      this.hint,
      this.baseColor,
      this.borderColor,
      this.errorColor,
      this.inputType = TextInputType.text,
      this.onTap,
      required this.onChanged});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomSpinnerWidget> {
  late Color currentColor;

  @override
  void initState() {
    super.initState();
    currentColor = widget.borderColor ?? AppColor.hEFEFEF;
  }

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        widget.onTap?.call();
      },
      child: Card(
        elevation: 0.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: currentColor, width: 1.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: TextField(
            readOnly: true,
            style: const TextStyle(
              color: AppColor.h444444,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            enableInteractiveSelection: false,
            enabled: false,
            keyboardType: widget.inputType,
            controller: widget.controller,
            onChanged: (text) {
              widget.onChanged(text);
              setState(() {});
            },
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                color: AppColor.h444444,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              hintStyle: TextStyle(
                color: widget.baseColor,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w300,
              ),
              border: InputBorder.none,
              hintText: widget.hint,
              // Here is key idea
              suffixIcon: SizedBox(
                  width: 10,
                  height: 10,
                  child:
                      Assets.icons.icArrowDownPng.image(width: 10, height: 10)),
            ),
          ),
        ),
      ),
    );
  }
}
