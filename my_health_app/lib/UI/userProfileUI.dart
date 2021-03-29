import 'package:flutter/material.dart';
import 'loginUI.dart';

const PrimaryColor = const Color(0xFF4CAF50);

class UserProfileUI extends StatelessWidget {
  String name = 'Sanath';
  String gender = 'M';
  double weight = 85, height = 185, waist = 36;
  int age = 19;
  final nameHolder;
  UserProfileUI({Key key, @required this.nameHolder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void goBack(BuildContext context) {
      Navigator.pop(context);
    }

    return MaterialApp(
        theme: ThemeData(
          primaryColor: PrimaryColor,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('User Profile'),
              centerTitle: true,
              actions: <Widget>[
                PopupMenuButton(
                    itemBuilder: (BuildContext bc) => [
                          PopupMenuItem(
                              child: Text("Change password"), value: "/cp"),
                          PopupMenuItem(
                              child: Text("Notification management"),
                              value: "/notif"),
                          PopupMenuItem(
                              child: Text("Log Out"), value: "/log-out"),
                        ],
                    onSelected: (String route) {
                      if (route == "/cp") {}
                      if (route == "/notif") {}
                      if (route == "/log-out") {}
                      // Note You must create respective pages for navigation
                      Navigator.pushNamed(context, route);
                    })
              ],
            ),
            body: SafeArea(
                child: Column(children: <Widget>[
              Container(
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                height: MediaQuery.of(context).size.height / 4,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/female-avatar.jpg'),
                      height: 110.0,
                      width: 110.0,
                    ),
                    SizedBox(width: 70.0),
                    Text(nameHolder,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0)),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                  margin: const EdgeInsets.all(6.0),
                  height: MediaQuery.of(context).size.height / 2,
                  child: Column(children: <Widget>[
                    Text('INFORMATION'),
                    SizedBox(height: 10.0),
                    Text('Name:  ${name}'),
                    SizedBox(height: 10.0),
                    Text('Age: ${age}'),
                    SizedBox(height: 10.0),
                    Text('Gender: ${gender}'),
                    SizedBox(height: 10.0),
                    Text('Weight: ${weight} kg'),
                    SizedBox(height: 10.0),
                    Text('Height: ${height} cm'),
                    SizedBox(height: 10.0),
                    Text('Waist Measurement: ${waist} cm'),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        onPressed: () => goBack(context),
                        color: Colors.lightBlue,
                        textColor: Colors.white,
                        child: Text('Go Back To Previous Screen')),
                  ])),
            ]))));
  }
}
