import 'package:crop_guard/pages/home/state.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();
  // variables here will not change over time
  final state = HomeState();

  void changeTabIndex(int index){
    state.tabIndex.value = index;
    update();
  }

 
}
