import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AboutSecreen extends StatefulWidget {
  @override
  State<AboutSecreen> createState() => _AboutSecreenState();
}

class _AboutSecreenState extends State<AboutSecreen> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = fortestme;
  }

  void fortestme() => print('Hi hassan hhhh');


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://www.raya.ps/cached_uploads/crop2/800/600/2021/04/13/capture-1618304550.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: BorderSide(
                      color: Colors.teal,
                      width: 1,
                    )),
                child: Text(
                  'تطبيق \nمسبحة إلكترونية',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(text: 'KYTC  ', children: [
                    TextSpan(
                        recognizer: _tapGestureRecognizer,
                        text: 'Strudnt Name',
                        style: TextStyle(color: Colors.green))
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
