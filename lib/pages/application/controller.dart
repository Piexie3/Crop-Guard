import 'package:crop_guard/pages/application/index.dart';
import 'package:get/get.dart';

class ApplicationController extends GetxController {

  var state = ApplicationState();
  

  
  void changeTabIndex(int index) {
    state.tabIndex.value = index;
    update();
  }
  
}