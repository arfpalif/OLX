import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Page/LoginPage.dart';
import 'package:flutter_application_1/View/Page/SplashPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBiDQI4b7ZMP0ZkkKKHsWDjZJM6GO49LeA",
            appId: "1:193803355257:web:35530c3c4beacea7b440a8",
            messagingSenderId: "193803355257",
            projectId: "olx-apps-1e931"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Makeup Products',
        home: SplashPage(
          child: LoginPage(),
        ));
  }
}
