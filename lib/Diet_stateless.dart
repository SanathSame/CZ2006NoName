import 'package:flutter/material.dart';
import 'expansionTile.dart';
import 'expansionGymMap.dart';
import 'UserProfileHandler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: const Text('Daily Diet'),
          leading: Icon(
            Icons.menu,
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              ),
            )
          ],
        ),
        body: CalorieDisplay(),
      ),
    );
  }
}

class CalorieDisplay extends StatefulWidget {
  @override
  _CalorieDisplayState createState() => _CalorieDisplayState();
}

class _CalorieDisplayState extends State<CalorieDisplay> {
  int intakeCalorie = 1800;
  int maintenanceCalorie = 2100;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                color: Colors.lightGreen,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'INTAKE',
                          style: TextStyle(
                            fontFamily: 'FjallaOne',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          intakeCalorie.toString(),
                          style: TextStyle(
                            fontFamily: 'FjallaOne',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'TARGET',
                          style: TextStyle(
                            fontFamily: 'FjallaOne',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          maintenanceCalorie.toString(),
                          style: TextStyle(
                            fontFamily: 'FjallaOne',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, top: 20.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Food Intake Today',
                  style: TextStyle(
                    fontFamily: 'FjallaOne',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen[300],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Expansiontile()));
                          },
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              Text('Add'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, top: 20.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Suggested Diet',
                  style: TextStyle(
                    fontFamily: 'FjallaOne',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: DefaultTabController(
                    length: 3, // length of tabs
                    initialIndex: 0,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: TabBar(
                              labelColor: Colors.green,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(text: 'Cutting'),
                                Tab(text: 'Maintenance'),
                                Tab(text: 'Bulking'),
                              ],
                            ),
                          ),
                          Container(
                              height: 500, //height of TabBarView
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey, width: 0.5))),
                              child: TabBarView(children: <Widget>[
                                Container(
                                  child: Center(
                                    child: Text('Display Cutting',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Display Maintenance',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text('Display Bulking',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ]))
                        ])),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, top: 20.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Suggested Exercise',
                  style: TextStyle(
                    fontFamily: 'FjallaOne',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: Center(
                  child: Text('Display Exericse',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreen[300]),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ExpansionGymMap()));
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.map),
                            Text('View Nearby Gyms'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
//              Future(),
            ],
          ),
        ),
      );
    });
  }
}

class Future extends StatefulWidget {
  @override
  _FutureState createState() => _FutureState();
}

class _FutureState extends State<Future> {
  UserProfileHandler u = new UserProfileHandler();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List>(
        future: u.getListOfObjects('/userProfile'),
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
                        title: Text("User ID: " + item.getUserID().toString()),
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
