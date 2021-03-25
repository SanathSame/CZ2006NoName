import 'dart:convert';
import 'package:software_engineering_connector/NetworkHandlerInterface.dart';
import 'package:software_engineering_connector/UserProfile.dart';

class UserProfileHandler extends NetworkHandlerInterface {
  @override
  List<UserProfile> parseObjectFormat(String responseBody) {
    // TODO: implement parseObjectFormat
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<UserProfile>((json) => UserProfile.fromJson(json))
        .toList();
  }

  UserProfile parseOneObject(String responseBody) {
    final parsed = jsonDecode(responseBody);
    return UserProfile.fromJson(parsed);
    //return parsed.map<UserProfile>((json) => UserProfile.fromJson(json));
  }
}
