import 'package:crop_guard/common/routes/names.dart';
import 'package:crop_guard/pages/auth/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  // variables here will not change over time
  final title = "Crop Guard";
  final state = WelcomeState();

  @override
  void onReady() {
    // It is the perfect place to enter navigation events, like snackbar, dialogs, or a new route, or async request.
    super.onReady();
    print('WelcomeController');
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(
        AppRoutes.application,
      ),
    );
  }
}
