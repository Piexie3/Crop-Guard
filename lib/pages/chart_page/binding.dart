import 'package:crop_guard/pages/chart_page/index.dart';
import 'package:get/get.dart';


//dependency injection class
class ChartBindings implements Bindings {
  @override
  void dependencies() {
    //we are injecting WelcomeController
    // when we use lazyput() the instance is called whennever you call this controller
    Get.lazyPut<ChartController>(() => ChartController());
  }

}