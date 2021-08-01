import 'package:flutter/material.dart';

import 'constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    required this.title,
    required this.press,
  }) : super();
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultpadding),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryColor,
            onPressed: () {},
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    required this.text,
  }) : super();

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultpadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
