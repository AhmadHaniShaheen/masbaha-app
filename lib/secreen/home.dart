import 'package:flutter/material.dart';

class Home_Secreen extends StatefulWidget {
  const Home_Secreen({Key? key}) : super(key: key);

  @override
  State<Home_Secreen> createState() => _Home_SecreenState();
}

class _Home_SecreenState extends State<Home_Secreen> {
  int _counter = 0;
  String _Azcar = 'أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          inclementCounter();
        },child: Icon(Icons.plus_one),),
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/about');
            }, icon: Icon(Icons.info)),
            PopupMenuButton<int>(
              onSelected: (int selecteditem) {
                switch (selecteditem) {
                  case 1:
                    changeContent('أستغفر الله');
                    break;
                  case 2:
                    changeContent('الله أكبر');
                    break;
                  case 3:
                    changeContent('الحمد الله');
                    break;
                  case 4:
                    changeContent('سبحان الله');
                    break;
                }
              },
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('استغفر الله'), value: 1),
                  PopupMenuItem(child: Text('الله أكبر'), value: 2),
                  PopupMenuItem(child: Text('الحمد لله'), value: 3),
                  PopupMenuItem(child: Text('سبحان الله'), value: 4),
                ];
              },
            )
          ],
          title: Text('مسبحة الأذكار'),
        ),
        body: Stack(
          children: [
            Image(
              height: double.infinity,
              image: NetworkImage(
                  'https://www.raya.ps/cached_uploads/crop2/800/600/2021/04/13/capture-1618304550.jpg'),
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://plata-store.com/wp-content/uploads/2020/08/%D8%B3%D8%A8%D8%AD%D8%A9-%D9%85%D9%86-%D8%A7%D9%84%D9%81%D8%B6%D8%A9-%D8%A7%D9%84%D8%A7%D8%B3%D8%AA%D8%B1%D9%8A%D9%84%D9%8A%D9%86%D9%8A%D8%A9-%D8%B9%D9%8A%D8%A7%D8%B1-925-%D9%85%D9%86-%D8%AD%D8%AC%D8%B1-%D8%A7%D9%84%D8%AC%D9%85%D8%B4%D8%AA-%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%B9%D9%8A-97185.jpg'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(_Azcar.toString()),
                          ),
                        ),
                        Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration:
                                BoxDecoration(color: Colors.teal, boxShadow: [
                              BoxShadow(
                                  color: Color(0xffdddfff),
                                  offset: Offset(5, 0),
                                  blurRadius: 4,
                                  spreadRadius: 5)
                            ]),
                            child: Center(
                                child: Text(_counter.toString(),
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    )))),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          inclementCounter();
                        },
                        child: Text('تسبيح'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(7),
                                    bottomRight: Radius.circular(7),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(0)))),
                      )),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _counter = 0;
                          });
                        },
                        child: Text('رجوع'),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    bottomLeft: Radius.circular(7),
                                    topRight: Radius.circular(0),
                                    bottomRight: Radius.circular(0)))),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void inclementCounter() {
    setState(() {
      _counter+=1;
    });
  }

  void changeContent(String content) {
    if (_Azcar != content) {
      setState(() {
        _Azcar = content;
        _counter = 0;
      });
    }
  }
}
