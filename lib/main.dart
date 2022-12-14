import 'package:flutter/material.dart';
import 'package:masbaha/secreen/about.dart';
import 'package:masbaha/secreen/home.dart';
import 'package:masbaha/secreen/lunch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Colors.teal,
          ),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            // labelSmall: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),
            headline6: TextStyle(
                color: Colors.teal, fontSize: 18, fontWeight: FontWeight.bold),
            button: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
            // headline5: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
          )),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home_Secreen(),
        '/lunch': (context) => Lunch_Secreen(),
        '/about': (context) => AboutSecreen(),
      },
    );
  }
}
