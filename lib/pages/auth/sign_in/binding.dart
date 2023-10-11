import 'package:crop_guard/pages/auth/sign_in/controller.dart';
import 'package:get/get.dart';


//dependency injection class
class SignInBindings implements Bindings {
  @override
  void dependencies() {
    //we are injecting WelcomeController
    Get.lazyPut<SignInController>(() => SignInController());
  }

}