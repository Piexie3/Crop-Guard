import 'package:crop_guard/pages/home/controller.dart';
import 'package:get/get.dart';

//dependency injection class
class HomeBindings implements Bindings {
  @override
  void dependencies() {
    //we are injecting WelcomeController
    // when we use lazyput() the instance is called whennever you call this controller
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
