import 'package:flutter/material.dart';
import 'package:qrcode/generate_code.dart';
import 'package:qrcode/scan_code.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: TextButton(
              child: Text("Kod Oluştur"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => GenerateCode()));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: TextButton(
              child: Text("Kod Tara"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ScanCode()));
              },
            ),
          )
        ],
      ),
    );
  }
}
