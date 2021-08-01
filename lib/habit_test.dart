import 'package:flutter/material.dart';
import 'package:saoji_flutter/constants.dart';

class HabitTest extends StatelessWidget {
  const HabitTest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ConditionTestCard(
            image: "assets/images/habits/alcohol.png",
            title: "Drinking",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/habits/smoking.png",
            title: "Smoking",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/habits/stress.png",
            title: "Stress",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ConditionTestCard extends StatelessWidget {
  const ConditionTestCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultpadding,
          top: kDefaultpadding / 2,
          bottom: kDefaultpadding * 2.5),
      width: 120,
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(kDefaultpadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(image),
                    width: 100,
                    height: 100,
                  ),
                  GestureDetector(
                    onTap: press(),
                    child: Container(
                      padding: EdgeInsets.all(kDefaultpadding / 2),
                      child: Center(
                        child: Text(title),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
