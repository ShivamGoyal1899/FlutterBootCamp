import 'package:flutter/material.dart';

import 'myHomePage.dart';

void main() => runApp(WhatsAppClone());

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}