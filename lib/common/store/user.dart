import 'dart:convert';

import 'package:get/get.dart';
import 'package:crop_guard/common/entities/entities.dart';
import 'package:crop_guard/common/routes/names.dart';
import 'package:crop_guard/common/services/services.dart';
import 'package:crop_guard/common/values/values.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  // checking if user is logged in
  final _isLogin = false.obs;
  // 令牌 token
  String token = '';
  // 用户 profile
  final _profile = UserData().obs;

  bool get isLogin => _isLogin.value;
  UserData get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  // set setIsLogin(login) => _isLogin.value = login;
  // you can also set login state in this manner
  /* set setIsLogin(login){
      _isLogin.value = login;
    }*/

  @override
  void onInit() {
    super.onInit();
    token = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    if (profileOffline.isNotEmpty) {
      _isLogin.value = true;
      _profile(UserData.fromJson(jsonDecode(profileOffline)));
    }
    print("... userstore is$_isLogin");
  }

  // saving token
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  // get profile
  Future<String> getProfile() async {
    if (token.isEmpty) return "";
    // var result = await UserAPI.profile();
    // _profile(result);
    // _isLogin.value = true;
    return StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
  }

  // saving profile
  Future<void> saveProfile(UserData profile) async {
    _isLogin.value = true;
    StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
    setToken(profile.accessToken!);
  }

  // during logout
  Future<void> onLogout() async {
    //  if (_isLogin.value) await UserApi.logout();
    await StorageService.to.remove(STORAGE_USER_TOKEN_KEY);
    await StorageService.to.remove(STORAGE_USER_PROFILE_KEY);
    _isLogin.value = false;
    token = '';
    print('... deleted the data from local storage');
    Get.offAllNamed(AppRoutes.signIn);
  }
}
