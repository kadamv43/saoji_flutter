import 'package:flutter/material.dart';
import 'package:saoji_flutter/constants.dart';

class LifestleDisordersTests extends StatelessWidget {
  const LifestleDisordersTests({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ConditionTestCard(
            image: "assets/images/lifestyle/diabetes.png",
            title: "Diabetes",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/lifestyle/heart.png",
            title: "Heart",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/lifestyle/kidney.png",
            title: "Kidney",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/lifestyle/liver.png",
            title: "Liver",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/lifestyle/thyroid.png",
            title: "Thyroid",
            press: () {},
          ),
          ConditionTestCard(
            image: "assets/images/lifestyle/vitamind.png",
            title: "Vitamin d",
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
