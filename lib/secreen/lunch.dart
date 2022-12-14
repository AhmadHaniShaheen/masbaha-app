import 'package:flutter/material.dart';
import 'package:masbaha/secreen/home.dart';

class Lunch_Secreen extends StatefulWidget {
  const Lunch_Secreen({Key? key}) : super(key: key);

  @override
  State<Lunch_Secreen> createState() => _Lunch_SecreenState();
}

class _Lunch_SecreenState extends State<Lunch_Secreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Home_Secreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Center(
          child: Text('مسبحة الأذكار'),
        ),
      ),
    );
  }
}
