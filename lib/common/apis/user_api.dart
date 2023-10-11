import 'package:crop_guard/common/entities/user.dart';
import 'package:crop_guard/common/utils/http.dart';

class UserApi {
  static Future<UserLoginResponseEntity> login({
    LoginRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      'api/login',
      queryParameters: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  static Future<UserLoginResponseEntity> get_profile() async {
    var response = await HttpUtil().post(
      'api/get_profile',
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  static Future<UserLoginResponseEntity> updateProfile({
    LoginRequestEntity? params,
  }) async {
    var response = await HttpUtil()
        .post('api/update_Profile', queryParameters: params?.toJson());
    return UserLoginResponseEntity.fromJson(response);
  }
}
