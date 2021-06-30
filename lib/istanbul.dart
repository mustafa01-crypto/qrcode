import 'package:flutter/material.dart';

class Istanbul extends StatefulWidget {
  const Istanbul({Key? key}) : super(key: key);

  @override
  _IstanbulState createState() => _IstanbulState();
}

class _IstanbulState extends State<Istanbul> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("ISTANBUL"),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 45,
            width: width,
            child: Text("ISTANBUL",textAlign: TextAlign.center,),
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
