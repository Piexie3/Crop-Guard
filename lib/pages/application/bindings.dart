//dependency injection class
import 'package:crop_guard/pages/application/index.dart';
import 'package:crop_guard/pages/plant/explore/index.dart';
import 'package:crop_guard/pages/plant/scan/index.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    //we are injecting WelcomeController
    // when we use lazyput() the instance is called whennever you call this controller
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<ExploreController>(() => ExploreController());
    Get.lazyPut<ScanController>(() => ScanController());
  }

}