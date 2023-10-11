import 'package:crop_guard/pages/plant/explore/controller.dart';
import 'package:get/get.dart';


//dependency injection class
class ExploreBindings implements Bindings {
  @override
  void dependencies() {
    //we are injecting WelcomeController
    // when we use lazyput() the instance is called whennever you call this controller
    Get.lazyPut<ExploreController>(() => ExploreController());
  }

}