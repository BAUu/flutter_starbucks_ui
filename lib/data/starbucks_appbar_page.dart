import 'package:flutter/material.dart';

class StarbucksAppbarPage extends StatelessWidget {
  const StarbucksAppbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('새로운 페이지'),
      ),
      body: Center(
        child: Text('새로운 페이지', style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
