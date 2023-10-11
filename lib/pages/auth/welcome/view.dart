import 'package:crop_guard/pages/auth/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple.shade700,
        child: _buildTitle(controller.title),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Center(
      child: AnimatedContainer(
        duration: const Duration(seconds: 3),
        curve: Curves.bounceOut,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 40.sp,
          ),
        ),
      ),
    );
  }
}
