import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'new_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'service.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //initilization of Firebase app
    runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Home(),
      routes: {
        'Login': (context) => Login(),
        'NewAccount': (context) => NewAccount(),
        'Service': (context) => Service(),
      },
    );
  }
}


