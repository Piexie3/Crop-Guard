import 'package:crop_guard/common/style/color.dart';
import 'package:crop_guard/pages/auth/sign_in/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _buildLogo(),
            _buidlThirdPartyLogin("Google", "google"),
            _buidlThirdPartyLogin("Facebook", "facebook"),
            _buidlThirdPartyLogin("Apple", "apple"),
            _buildOrWidget(),
            _buidlThirdPartyLogin("Sig in with Email", ""),
            _buildSignupWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildSignupWidget() {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Text(
          "Already have an account?",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.primaryText,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Login here",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOrWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              height: 2.8.h,
            ),
          ),
          const Text(
            "  or  ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Divider(
              height: 2.8.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(
        top: 100.h,
        bottom: 80.h,
      ),
      child: Text(
        "Daema",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.primaryText,
          fontWeight: FontWeight.bold,
          fontSize: 34.sp,
        ),
      ),
    );
  }

  Widget _buidlThirdPartyLogin(
    String loginType,
    String image,
  ) {
    return GestureDetector(
      onTap: () {
        print("... signup with $loginType");
        controller.handleSignIn('google');
      },
      child: Container(
        width: 295.w,
        height: 44.h,
        padding: EdgeInsets.all(10.h),
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 163, 163, 163).withOpacity(1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1))
          ],
        ),
        child: Row(
          mainAxisAlignment:
              image == "" ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            image == ""
                ? const SizedBox()
                : Container(
                    padding: EdgeInsets.only(left: 40.w, right: 20.w),
                    child: Image.asset(
                      "assets/icons/$image.png",
                      height: 40,
                      width: 40,
                    ),
                  ),
            SizedBox(
              child: Align(
                child: Text(
                  "Sign in with $loginType",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.primaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
