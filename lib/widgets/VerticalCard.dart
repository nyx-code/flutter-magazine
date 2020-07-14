import 'package:flutter/material.dart';

class VerticalCard extends StatelessWidget {
  final String poster, title, publishedDate;

  const VerticalCard(
      {Key key,
      @required this.poster,
      @required this.title,
      @required this.publishedDate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 150.0,
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(poster)),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            publishedDate,
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                fontWeight: FontWeight.bold, color: Color(0xFFBBBBBB)),
          ),
        ],
      ),
    );
  }
}
