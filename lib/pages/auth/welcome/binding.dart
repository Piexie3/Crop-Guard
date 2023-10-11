import 'package:crop_guard/pages/auth/welcome/controller.dart';
import 'package:get/get.dart';


//dependency injection class
class WelcomeBindings implements Bindings {
  @override
  void dependencies() {
    //we are injecting WelcomeController
    // when we use lazyput() the instance is called whennever you call this controller
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }

}