import 'package:crop_guard/common/apis/user_api.dart';
import 'package:crop_guard/common/entities/entities.dart';
import 'package:crop_guard/common/routes/names.dart';
import 'package:crop_guard/common/store/user.dart';
import 'package:crop_guard/common/utils/http.dart';
import 'package:crop_guard/pages/auth/sign_in/state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();
  // variables here will not change over time

  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      //this is where you have one account and use it to sign in to many different apps and websites with the same password
      'openid',
    ],
  );

  Future<void> handleSignIn(String type) async {
    //1: Email

    //2: Google

    try {
      if (type == "google") {
        var user = await _googleSignIn.signIn();
        print(user);
        if (user != null) {
          // final _gAuthentication = await user.authentication;
          // final _credentials = await GoogleAuthProvider.credential(
          //   idToken: _gAuthentication.idToken,
          //   accessToken: _gAuthentication.accessToken,
          // );

          String? displayName = user.displayName;
          String email = user.email;
          String id = user.id;
          String photoUrl = user.photoUrl ?? '';

          LoginRequestEntity userData = LoginRequestEntity();
          userData.avatar = photoUrl;
          userData.name = displayName;
          userData.email = email;
          userData.open_id = id;
          userData.type = 2;
          asyncPostAllData(userData);
        }
      } else if (type == "facebook") {
        if (kDebugMode) {
          print("...error in login with facebook");
        }
      } else if (type == "apple") {
        if (kDebugMode) {
          print("...error in login with apple");
        }
      } else if (type == "phone number") {
        if (kDebugMode) {
          print("...error in login with phone number");
        }
      }
    } catch (e) {
      // if (kDebugMode) {
      print("...error in login ${e.toString()}");
      // }
    }
      // Get.offAllNamed(AppRoutes.message);
    //3: Facebook
    //4: Apple
    //5: Phone
  }

  asyncPostAllData(LoginRequestEntity userData) async {
    //saving user details in the database

    //saving user details in the local storage
    var response = await HttpUtil().get("api/index");
    print(response);  
    EasyLoading.show(
      indicator: const CircularProgressIndicator(color: Color.fromARGB(255, 0, 146, 39),),
      maskType: EasyLoadingMaskType.clear,
      // dismissOnTap: true,  
    );
    var result = await UserApi.login(params: userData);
    if (result.code ==0) {
      await UserStore.to.saveProfile(result.data!);
      EasyLoading.dismiss();
    }else{
      EasyLoading.dismiss();
      // toastInfo(msg: "Ïnternet Error");
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("data")));
    }
    print('...to message screen');
    Get.offAllNamed(AppRoutes.home);
  }
}
