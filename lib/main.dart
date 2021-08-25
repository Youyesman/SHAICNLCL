import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static const String _title = 'Widget Example';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WidgetApp(),
    );
  }
}

class WidgetApp extends StatefulWidget {
  const WidgetApp({Key? key}) : super(key: key);

  @override
  _WidgetExampleState createState() => _WidgetExampleState();
}

class _WidgetExampleState extends State<WidgetApp> {

  String sum='';
  TextEditingController value1 = TextEditingController();


  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('상해-인천 LCL'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'CBM을 입력해주세요',
                  style: TextStyle(fontSize:30),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  '예상견적 : $sum 원',
                  style: TextStyle(fontSize:20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left:20,right:20),
                child: TextField(keyboardType: TextInputType.number,controller: value1),
              ),

              Padding(
                padding: EdgeInsets.all(15),

                child: ElevatedButton(

                    child: Row(
                      children: <Widget>[
                        Icon(Icons.local_shipping),
                        Text('  견적보기'),
                      ],
                    ),
                    onPressed: (){
                      setState(() {
                        double result = double.parse(value1.value.text)*15*1150
                            +double.parse(value1.value.text)*15*1150
                            +double.parse(value1.value.text)*7500
                            +50000
                            +60*1150
                            +double.parse(value1.value.text)*2000
                            +double.parse(value1.value.text)*15000
                            +2000
                            +double.parse(value1.value.text)*15*1150
                            +double.parse(value1.value.text)*2*1150
                            +double.parse(value1.value.text)*4*1150
                            +double.parse(value1.value.text)*5*1150
                            +51000
                        ;


                        sum='$result';
                      });
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}