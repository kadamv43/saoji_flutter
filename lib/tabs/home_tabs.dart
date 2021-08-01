import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:saoji_flutter/condition_tests.dart';
import 'package:saoji_flutter/habit_test.dart';
import 'package:saoji_flutter/lifestyle_disorders_tests.dart';
import 'package:saoji_flutter/title_with_more_button.dart';

class HomeTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15.0),
          CarouselSlider(
              items: <Widget>[
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/banner/1.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/banner/2.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/banner/3.jpg'),
                          fit: BoxFit.cover)),
                ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/banner/4.jpg'),
                          fit: BoxFit.cover)),
                ),
              ],
              options: CarouselOptions(
                  height: 180.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(microseconds: 800),
                  viewportFraction: 0.8)),
          TitleWithMoreBtn(title: "Lifetyle Disorders", press: () {}),
          LifestleDisordersTests(),
          TitleWithMoreBtn(title: "Test by condition", press: () {}),
          Conditiontests(),
          TitleWithMoreBtn(title: "Test by Habits", press: () {}),
          HabitTest(),
        ],
      ),
    );
  }
}
