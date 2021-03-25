import 'dart:convert';
import 'HealthDiseases.dart';
import 'NetworkHandler.dart';
import 'NetworkHandlerInterface.dart';
import 'HealthDiseases.dart';

class HealthDiseaseHandler extends NetworkHandlerInterface {
  //returns all the list of healthDisease

  //either implement in network handler or here.

  //implements the abstract parse of information
  //returns a list of healthDisease

  @override
  List<HealthDisease> parseObjectFormat(String responseBody) {
    // TODO: implement parseObjectFormat
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<HealthDisease>((json) => HealthDisease.fromJson(json))
        .toList();
  }

  HealthDisease parseHealthDiseaseFormat(String responseBody) {
    final parsed = jsonDecode(responseBody).cast(dynamic);
    return parsed.toString((json) => HealthDisease.fromJson(json));
  }

  Future<dynamic> getSpecificObject(String route) {
    return get(route).then((responseBody) => parseObjectFormat(responseBody));
  }

/*
  Future<List<dynamic>> getListOfObjects(String route) {
    return get("/healthDisease")
        .then((responseBody) => parseObjectFormat(responseBody));
  }
  */
/*
  //returns a parsed form of disease
  List<HealthDisease> parseHealthDisease(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<HealthDisease>((json) => HealthDisease.fromJson(json))
        .toList();
  }*/
}
