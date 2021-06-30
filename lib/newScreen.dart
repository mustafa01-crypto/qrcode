import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class newScreen extends StatefulWidget {
  const newScreen({Key? key}) : super(key: key);

  @override
  _newScreenState createState() => _newScreenState();
}

class _newScreenState extends State<newScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("BURSA"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 45,
            width: width,
            child: Text("BURSA",textAlign: TextAlign.center,),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.deepOrange),
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: ' world!'),
              ],
            ),
          )
        ],

      ),
    );
  }
}
