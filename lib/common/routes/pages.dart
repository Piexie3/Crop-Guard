import 'package:crop_guard/pages/application/index.dart';
import 'package:crop_guard/pages/auth/sign_in/index.dart';
import 'package:crop_guard/pages/auth/welcome/index.dart';
import 'package:crop_guard/pages/plant/scan/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/home/index.dart';
import '../../pages/plant/explore/index.dart';
import 'routes.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  static const application = AppRoutes.application;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // about bootup of an app
    GetPage(
      name: AppRoutes.initial,
      page: () => const WelcomePage(),
      binding: WelcomeBindings(),
    ),
    //sining in
    GetPage(
      name: AppRoutes.signIn,
      page: () => const SignInPage(),
      binding: SignInBindings(),
    ),
    //Scan screen
    GetPage(
      name: AppRoutes.scan,
      page: () => const ScanPage(),
      binding: ScanBindings(),
    ),

    // home Screen
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 0),
      // ],
    ),

    //explore screen
    GetPage(
      name: AppRoutes.explore,
      page: () => const ExplorePage(),
      binding: ExploreBindings(),
      
    ),
    //explore screen
    GetPage(
      name: AppRoutes.explore,
      page: () => const ExplorePage(),
      binding: ExploreBindings(),
      // middlewares: [
      //   RouteWelcomeMiddleware(priority: 0),
      // ],
    ),
   
    // check if needed to login or not
    GetPage(
      name: AppRoutes.application,
      page: () => const ApplicationPage(),
      binding: ApplicationBindings(),
      // middlewares: [
      //   RouteAuthMiddleware(priority: 1),
      // ],
    ),
 /*
    // 最新路由
    // 首页
    GetPage(
      name: AppRoutes.contact,
      page: () => const ContactsPage(),
      binding: ContactsBinding(),
    ),

    
    //Profile Section
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
    ),
    //聊天详情

    GetPage(
      name: AppRoutes.chat,
      page: () => const ChatPage(),
      binding: ChatBindings(),
    ),

    GetPage(name: AppRoutes.Photoimgview, page: () => PhotoImgViewPage(), binding: PhotoImgViewBinding()),*/
  ];
}
