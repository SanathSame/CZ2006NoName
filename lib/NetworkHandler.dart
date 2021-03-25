// import 'dart:async';
// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:logger/logger.dart';
// import 'package:software_engineering_connector/HealthDiseases.dart';
//
// class NetworkHandler {
//   String baseUrl = "https://myhealth001.herokuapp.com/";
//   var log = Logger();
//
//   Future<List<HealthDisease>> get(String url) async {
//     // /user/register
//     print("test");
//     var responseUrl =
//         Uri.https('myhealth001.herokuapp.com', url, {'q': '{http}'});
//     var response = await http.get(responseUrl);
//     log.i(response.body);
//     //log.i(response.statusCode);
//     if (response.statusCode == 200) {
//       //DO some processing for the body into a list
//       return parseHealthDisease(response.body);
//     }
//     //else do something else
//   }
//
// //function that converts a response body into a list of healthdiseases
//   List<HealthDisease> parseHealthDisease(String responseBody) {
//     final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
//     return parsed
//         .map<HealthDisease>((json) => HealthDisease.fromJson(json))
//         .toList();
//   }
//
//   Future<dynamic> post(String url) async {
//     // var responseUrl = Uri.parse('https://example.com/whatsit/create');
//     var responseUrl =
//         Uri.https('myhealth001.herokuapp.com', url, {'q': '{http}'});
//     var response =
//         await http.post(responseUrl, body: {'name': 'doodle', 'color': 'blue'});
//     if (response.statusCode == 200) {
//       return "successfully added";
//     } else {
//       //return error
//       return -1;
//     }
//   }
// }
