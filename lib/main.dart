import 'package:flutter/material.dart';
import 'package:myfin_app/homepage/navbar.dart';
import 'package:myfin_app/loginpage/login_screen.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebase_core.Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Myfin App",
      initialRoute: 'loginscreen',
    routes: {
      // When navigating to the "homeScreen" route, build the HomeScreen widget.
      'loginscreen': (context) => LoginDemo(),
      // When navigating to the "secondScreen" route, build the SecondScreen widget.
      'navbar': (context) => const Navbar(),
    },
    );
  }
}
