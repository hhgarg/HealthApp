import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'linechart.dart';
import 'topnavi.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //double height = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 12, right: 12, bottom: 4),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.orange, width: 2),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/dp.jpg',
                            height: 35,
                            width: 35,
                          ),
                        ),
                      ),
                      new Spacer(),
                      SvgPicture.asset(
                        'assets/CircledMenu.svg',
                        semanticsLabel: 'menu',
                      ),
                      SizedBox(width: 7),
                      SvgPicture.asset(
                        'assets/Notification.svg',
                        semanticsLabel: 'notifications',
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  TopNavigationBar(),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "All Time",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      new Spacer(),
                      Text(
                        "KG",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  LineChartWidget(),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Colors.black),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, left: 42),
                        child: Text(
                          'Current Weight',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      new Spacer(),
                      SizedBox(width: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          '-3kg',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Color(0xffff6565),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.0),
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: '61',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'kg',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.0),
                    child: Text(
                      'Progress till now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 52.0),
                    child: Text(
                      'You have lost around 3kg',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Column(
                      children: <Widget>[
                        TimelineTile(
                          alignment: TimelineAlign.start,
                          isFirst: true,
                          indicatorStyle: const IndicatorStyle(
                            width: 20,
                            color: Color(0xffff6565),
                            padding: EdgeInsets.only(bottom: 2),
                          ),
                          beforeLineStyle: const LineStyle(
                            color: Color(0xffff6565),
                          ),
                          endChild: Padding(
                            padding: const EdgeInsets.only(
                              top: 4.0,
                              left: 18,
                              right: 18,
                            ),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: 52),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "January",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Your weight was 50kg in Jan",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffff6565),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      new Spacer(),
                                      Text(
                                        "+0.8",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xffff6565),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.6),
                          child: TimelineTile(
                            alignment: TimelineAlign.start,
                            indicatorStyle: const IndicatorStyle(
                              width: 15,
                              color: Color(0xffff6565),
                            ),
                            beforeLineStyle: const LineStyle(
                              color: Color(0xffff6565),
                            ),
                            endChild: Padding(
                              padding: const EdgeInsets.only(
                                top: 1.0,
                                left: 18,
                                right: 18,
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(minHeight: 52),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "February",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Your weight was 55kg in Jan",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xffff6565),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        new Spacer(),
                                        Text(
                                          "+5.0",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xffff6565),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.6),
                          child: TimelineTile(
                            alignment: TimelineAlign.start,
                            isLast: true,
                            indicatorStyle: const IndicatorStyle(
                              width: 15,
                              color: Color(0xffff6565),
                              padding: EdgeInsets.only(top: 2),
                            ),
                            beforeLineStyle: const LineStyle(
                              color: Color(0xffff6565),
                            ),
                            endChild: Padding(
                              padding: const EdgeInsets.only(
                                top: 1.0,
                                left: 18,
                                right: 18,
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(minHeight: 52),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "March",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Your weight was 49kg in Jan",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        new Spacer(),
                                        Text(
                                          "-6.0",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28.0),
                    child: Text(
                      "Note: you are not consistent at workout and diet",
                      style: TextStyle(
                        fontSize: 0.02 * (MediaQuery.of(context).size.height),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/home.svg',
                        semanticsLabel: 'home',
                        height: 0.070 * (MediaQuery.of(context).size.height),
                      ),
                      SvgPicture.asset(
                        'assets/meal.svg',
                        semanticsLabel: 'meal',
                        height: 0.070 * (MediaQuery.of(context).size.height),
                      ),
                      SvgPicture.asset(
                        'assets/Exercise.svg',
                        semanticsLabel: 'exercis',
                        height: 0.070 * (MediaQuery.of(context).size.height),
                      ),
                      SvgPicture.asset(
                        'assets/OnlineSupport.svg',
                        semanticsLabel: 'support',
                        height: 0.070 * (MediaQuery.of(context).size.height),
                      ),
                      SvgPicture.asset(
                        'assets/Analytics.svg',
                        semanticsLabel: 'analytics',
                        height: 0.070 * (MediaQuery.of(context).size.height),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
