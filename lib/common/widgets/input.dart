import 'package:flutter/material.dart';
import 'package:crop_guard/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
Widget inputTextEdit({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
  bool isPassword = false,
  double marginTop = 15,
  bool autofocus = false,
  Widget? prefix,
  Widget? suffix,
  InputBorder border = InputBorder.none,
}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop.h),
    decoration: BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      autofocus: autofocus,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefix: prefix,
        suffix: suffix,
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        border: border,
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      maxLines: 1,
      autocorrect: false, //
      obscureText: isPassword, //
    ),
  );
}

Widget inputEmailEdit(
    {TextEditingController? controller,
    TextInputType keyboardType = TextInputType.emailAddress,
    String? hintText,
    bool isPassword = false,
    double marginTop = 15,
    bool autofocus = false,
    Widget? prefix,
    Widget? suffix,
    InputBorder border = InputBorder.none}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop.h),
    decoration: BoxDecoration(
      color: AppColors.primaryBackground,
      borderRadius: Radii.k6pxRadius,
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(41, 0, 0, 0),
          offset: Offset(0, 1),
          blurRadius: 0,
        ),
      ],
    ),
    child: TextField(
      autofocus: autofocus,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefix: prefix,
        suffix: suffix,
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
        border: border,
        hintStyle: TextStyle(
          color: AppColors.primaryText,
        ),
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
      ),
      maxLines: 1,
      autocorrect: false, //
      obscureText: isPassword, //
    ),
  );
}
