import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Center(
        child: Text('Hello world'),
      ),
    );
  }
}
