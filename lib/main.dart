import 'package:flutter/material.dart';
import 'package:flutter_magazine/widgets/CustomAppBar.dart';
import 'package:flutter_magazine/widgets/VerticalCard.dart';

import 'data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Magazine',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CustomAppBar(),
                SizedBox(
                  height: 16.0,
                ),
                Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => VerticalCard(
                              poster: data[index]["poster"],
                              title: data[index]['title'],
                              publishedDate: data[index]['publishedDate'],
                            ),
                        itemCount: data.length)),
              ],
            ),
          )),
    );
  }
}
