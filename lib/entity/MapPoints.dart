import 'dart:collection';

class MapPoints {
  final HashMap<int, dynamic> clusters;
  final String date;

  MapPoints({this.clusters, this.date});

  factory MapPoints.fromJson(Map<String, dynamic> json) {
    return MapPoints(
      date: json['date'] as String,
      clusters: json['clusters'] as HashMap,
      //how it looks like in backend.
      // clusters: {1 , {"point1 longitude, point1 latitude}
    );
  }
}
