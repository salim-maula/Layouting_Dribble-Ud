import 'package:flutter/material.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({
    Key? key,
    required this.title,
    required this.subTitle
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Notable works',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Text(
          'Based on popularity of articles',
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: Colors.grey),
        )
      ],
    );
  }
}