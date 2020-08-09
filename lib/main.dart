import 'package:flutter/material.dart';
import 'package:medigo_hab59/HomePage.dart';

void main()=> runApp(MediGo());

class MediGo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

