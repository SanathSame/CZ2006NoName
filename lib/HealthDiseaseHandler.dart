import 'dart:convert';
import 'package:software_engineering_connector/NetworkHandler.dart';
import 'package:software_engineering_connector/NetworkHandlerInterface.dart';
import 'package:software_engineering_connector/HealthDiseases.dart';

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

  @override
  HealthDisease parseOneObject(String responseBody) {
    // TODO: implement parseOneObject
    final parsed = jsonDecode(responseBody);
    return HealthDisease.fromJson(parsed);
    //parsed.map<HealthDisease>((json) => HealthDisease.fromJson(json));
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
