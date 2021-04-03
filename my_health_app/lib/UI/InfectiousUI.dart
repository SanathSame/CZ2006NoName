import 'package:flutter/material.dart';
import '../Controller/HealthProfileController.dart';
import '../Controller/UserProfileController.dart';
import '../Controller/InfectiousController.dart';

void main() {
  runApp(UserProfile());
}



class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Text("MAP"), color: Colors.blue, height: size.height * 0.5);
  }
}

class InfectiousUI extends StatefulWidget {
  @override
  _InfectiousUIState createState() => _InfectiousUIState();
}

class _InfectiousUIState extends State<InfectiousUI> {
  InfectiousController h = new InfectiousController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
        future: h.getListOfObjects('/infectiousDisease'),
        initialData: [],
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, int position) {
                    final item = snapshot.data[position];
                    //get your item data here ...
                    return Card(
                      child: ExpansionTile(
                        title: Text("Disease Name: " + item.getDiseaseName()),
                        initiallyExpanded: false,
                        maintainState: false,
                        children: <Widget>[
                          Text("Disease type: "),
                          Text("Recommended diet: ")
                        ],
                      ),
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  UserProfileHandler u = new UserProfileHandler();
  //Future<dynamic> user =UserProfileHandler().getObject('/userProfile/:604fd4812630973608ce2e35');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Single user'),
        ),
        body: FutureBuilder(
          future: u.getObject('/userProfile/:604fd4812630973608ce2e35'),
          //initialData: [],
          builder: (context, snapshot) {
            return snapshot.hasData
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (_, int position) {
                      final item = snapshot.data[position];
                      //get your item data here ...
                      return Card(
                        child: ListTile(
                          title:
                              Text("User ID: " + item.getUserID().toString()),
                        ),
                      );
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
