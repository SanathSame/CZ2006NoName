import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: test(),
    );
  }
}

class test extends StatefulWidget {
  testState createState() => testState();
}

class testState extends State<test> {
  Completer<GoogleMapController> _controller = Completer();

// 2
  static final CameraPosition _myLocation = CameraPosition(
    target: LatLng(0, 0),
  );
  List<Marker> markers = <Marker>[];
  static const String _API_KEY = 'AIzaSyALEYGT-cFANGs-8BnYcqarG1KGt_x8e04';

  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _myLocation,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set<Marker>.of(markers),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          searchNearby(0, 0); // 2
        },
        label: Text('Places Nearby'), // 3
        icon: Icon(Icons.place), // 4
      ),
    );
  }

  void searchNearby(double latitude, double longtitude) async {
    setState(() {
      markers.clear();
    });
    setState(() {
      // 2
      List<double> longs = [3, 5, 6, 8];
      List<double> lats = [3, 5, 6, 8];
      List<String> title = ["test1", "test2", "test3", "test4"];
      List<String> description = [
        "please close",
        "please close",
        "please close",
        "please close"
      ];
      // 3
      for (int i = 0; i < longs.length; i++) {
        // 4
        String markerId = "$i";
        markers.add(
          Marker(
            markerId: MarkerId(markerId),
            position: LatLng(lats[i], longs[i]),
            infoWindow: InfoWindow(title: "test"),
            onTap: () {
              alertDialog(title[i], description[i]);
            },
          ),
        );
      }
    });
  }

  Future<void> alertDialog(String title, String description) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(description),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
