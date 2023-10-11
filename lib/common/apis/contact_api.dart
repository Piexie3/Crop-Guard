import 'package:crop_guard/common/entities/contact.dart';
import 'package:crop_guard/common/utils/http.dart';

class ContactAPI {
    //contact page
    //get all contacts of users info
    static Future<ContactResponseEntity> post_contact() async {
      var response = await HttpUtil().post(
        'api/contact',
      );
      return ContactResponseEntity.fromJson(response);
    }
  
}