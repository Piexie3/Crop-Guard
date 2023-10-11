import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crop_guard/common/routes/routes.dart';
import 'package:crop_guard/common/store/store.dart';

// checks if the user has already logged in
class RouteWelcomeMiddleware extends GetMiddleware {
  // priority smaller the better
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin == true ||
        route == AppRoutes.initial ||
        route == AppRoutes.signIn) {
      return null;
    } else {
      Future.delayed(
        const Duration(seconds: 2),
        () => Get.snackbar(
          "Tips",
          "Login expired, please login again!",
        ),
      );
      return const RouteSettings(name: AppRoutes.signIn);
    }

    // if (ConfigStore.to.isFirstOpen == false) {
    //   return null;
    // } else
    // if (UserStore.to.isLogin == true) {
    //   return const RouteSettings(name: AppRoutes.message);
    // } else if (UserStore.to.isLogin == false) {
    //   return const RouteSettings(name: AppRoutes.signIn);
    // }
  }
}
