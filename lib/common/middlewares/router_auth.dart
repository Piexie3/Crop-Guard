import 'package:flutter/material.dart';
import 'package:crop_guard/common/routes/routes.dart';
import 'package:crop_guard/common/store/store.dart';

import 'package:get/get.dart';

/// Check if the user has logged in
class RouteAuthMiddleware extends GetMiddleware {
  // priority smaller the better
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.signIn 
        ||
        route == AppRoutes.initial) {
      return null;
    } else {
      Future.delayed(
        const Duration(seconds: 1),
        () => Get.snackbar(
          "Tips",
          "Login expired, please login",
        ),
      );
      return const RouteSettings(name: AppRoutes.signIn);
    }
  }
}
