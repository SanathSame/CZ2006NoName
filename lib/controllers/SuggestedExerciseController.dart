import 'dart:convert';

import 'package:health_app/entity/SuggestedExercise.dart';

import '../entity/SuggestedExercise.dart';
import 'NetworkController.dart';

class SuggestedExerciseHandler extends NetworkController {
  @override
  List<SuggestedExercise> parseObjectFormat(String responseBody) {
    // TODO: implement parseObjectFormat
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<SuggestedExercise>((json) => SuggestedExercise.fromJson(json))
        .toList();
  }

  @override
  SuggestedExercise parseOneObject(String responseBody) {
    // TODO: implement parseOneObject
    final parsed = jsonDecode(responseBody);
    return SuggestedExercise.fromJson(parsed);
    //parsed.map<HealthDisease>((json) => HealthDisease.fromJson(json));
  }
}
