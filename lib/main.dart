import 'package:flutter/material.dart';
import 'package:flutter_magazine/screens/HomeScreen.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Magazine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen()));
}
