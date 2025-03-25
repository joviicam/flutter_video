import 'package:flutter/material.dart';

class TipsScreen extends StatefulWidget {
  const TipsScreen({super.key});

  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Tips',
              style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Tips Screen')),
    );
  }
}
