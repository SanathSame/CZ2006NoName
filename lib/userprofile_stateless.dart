import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightGreen,
              title: const Text('User Profile'),
              leading: Icon(
                Icons.menu,
              ),
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                        onTap: () {}, child: Icon(Icons.more_vert)))
              ],
            ),
            body: UserProfile()));
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.people_rounded),
              SizedBox(width: 50.0),
              Text('HIENVAN001',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
            ],
          ),
        ),
        SizedBox(height: 50.0),
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
      ],
    ));
  }
}
