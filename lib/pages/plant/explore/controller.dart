import 'package:crop_guard/pages/plant/explore/state.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  ExploreController();
  // variables here will not change over time
  final state = ExploreState();
   List plants = [
      "House Plant",
      "Evergreen trees",
      "Palm Tree",
      "Palm Tree",
      "Palm Tree",
      "Palm Tree",
    ];

  TextEditingController searchController = TextEditingController();
  bool isplantClicked = false;
  void searchClear(){
    searchController.clear();
    update();
  }
  void clickPlant(){
    isplantClicked = !isplantClicked;
    update();
  }
 
}
