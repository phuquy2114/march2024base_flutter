import 'package:flutter/material.dart';

import '../resources/app_color.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final String? errorText;
  final TextEditingController controller;
  final Color? baseColor;
  final Color? borderColor;
  final Color? errorColor;
  final int? maxLines;
  final TextInputType? inputType;
  final bool obscureText;
  final bool? readOnly;
  final Function(String?)? validator;
  final Function(String) onChanged;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.hint,
      required this.onChanged,
      this.baseColor,
      this.borderColor,
      this.errorColor,
      this.inputType = TextInputType.text,
      this.obscureText = false,
      this.validator,
      this.maxLines = 1,
      this.errorText, this.readOnly = false});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late Color currentColor;
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    currentColor = widget.borderColor ?? AppColor.hEFEFEF;
    _passwordVisible = widget.obscureText ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: AppColor.h444444,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      obscureText: _passwordVisible,
      onChanged: (text) {
        widget.onChanged(text);
        if (widget.validator != null) {
          if (!widget.validator!(text) || text.isEmpty) {
            currentColor = widget.errorColor ?? AppColor.hAA003F;
          } else {
            currentColor = widget.baseColor ?? AppColor.h141414;
          }
          setState(() {});
        }
      },
      maxLines: widget.maxLines,
      keyboardType: widget.inputType,
      controller: widget.controller,
      readOnly: widget.readOnly ?? false,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(width: 1, color: currentColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(width: 1, color: currentColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(width: 1, color: currentColor), //<-- SEE HERE
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(width: 1, color: currentColor), //<-- SEE HERE
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.redAccent),
          borderRadius: BorderRadius.circular(5.0),
        ),
        hintStyle: TextStyle(
          color: widget.baseColor,
          fontFamily: "OpenSans",
          fontWeight: FontWeight.w300,
        ),
        errorText: widget.errorText,
        hintText: widget.hint,
        // Here is key idea
        suffixIcon: widget.obscureText == true
            ? IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColor.h444444,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              )
            : null,
      ),
    );
  }
}
