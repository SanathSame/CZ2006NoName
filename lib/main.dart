import 'package:flutter/material.dart';
import 'package:software_engineering_connector/HealthDiseases.dart';
import 'package:software_engineering_connector/UserProfileHandler.dart';
import './NetworkHandler.dart';
import 'HealthDiseaseHandler.dart';
import 'UserProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<HealthDisease> test;

  //gets the new data from my server side
  // networkHandler.get("/userProfile");
  // networkHandler
  //     .get("/healthDisease")
  //     .then((abc) => print(abc[0].getDiseaseName()));

  void _incrementCounter() {
    HealthDiseaseHandler hd = HealthDiseaseHandler();
    UserProfileHandler uh = UserProfileHandler();
    //
    uh.getObject("/userProfile/604fd4812630973608ce2e35").then((abc) {
      UserProfile test = abc;
      // test = (abc);
      print(test.getBmi());
      //print(test.getBmi());
    });

    hd.getListOfObjects('/healthDisease').then((listOfDiseases) {
      test = listOfDiseases;
      print(test[0].getDiseaseName());
    });

    //gets the new data from my server side
    // networkHandler.get("/userProfile");
    // networkHandler
    //     .get("/healthDisease")
    //     .then((abc) => print(abc[0].getDiseaseName()));
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
