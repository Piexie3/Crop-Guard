import 'package:crop_guard/pages/auth/welcome/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChartPage extends GetView<WelcomeController> {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Chart Screen",
          ),
        ),
      ),
    );
  }
}
