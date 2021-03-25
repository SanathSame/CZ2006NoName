import 'package:flutter/material.dart';

void main() => runApp(MyApp());
const PrimaryColor = const Color(0xFF4CAF50);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            body: UserProfile()));
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            Text('HIENVAN001',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0)),
          ],
        ),
      ),
      SizedBox(height: 50.0),
      Container(
          margin: const EdgeInsets.all(6.0),
          height: MediaQuery.of(context).size.height / 2,
          child: Column(children: <Widget>[
            Text('INFORMATION',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
            SizedBox(height: 30.0),
            Text('Name: Lyan Tran'),
            SizedBox(height: 30.0),
            Text('Age: 20'),
            SizedBox(height: 30.0),
            Text('Gender: Female'),
            SizedBox(height: 30.0),
            Text('Weight: 50kg'),
            SizedBox(height: 30.0),
            Text('Height: 160 cm'),
            SizedBox(height: 30.0),
            Text('Waist Measurement: 50cm'),
          ])),
    ]));
  }
}
