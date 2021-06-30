import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateCode extends StatefulWidget {
  const GenerateCode({Key? key}) : super(key: key);

  @override
  _GenerateCodeState createState() => _GenerateCodeState();
}

class _GenerateCodeState extends State<GenerateCode> {
  TextEditingController qrdataFeed = TextEditingController();

  String qrData =
      "https://github.com/dm77/barcodescanner";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Generator'),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              QrImage(

                data: qrData,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                "New QR Link Generator",
                style: TextStyle(fontSize: 20.0),
              ),
              TextField(
                controller: qrdataFeed,
                decoration: InputDecoration(
                  hintText: "Input your link or data",
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
                child: TextButton(

                  onPressed: () async {

                    if (qrdataFeed.text.isEmpty) {
                      setState(() {
                        qrData = "";
                      });
                    } else {
                      setState(() {
                        qrData = qrdataFeed.text;
                      });
                    }

                  },
                  child: Text(
                    "Generate QR",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
