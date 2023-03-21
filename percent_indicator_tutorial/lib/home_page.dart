import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CarouselSlider(
        slideTransform: CubeTransform(),
        //it allows to scroll in loop
        unlimitedMode: true,
        slideIndicator: CircularSlideIndicator(
          padding: EdgeInsets.only(
            bottom: 30,
          ),
          currentIndicatorColor: Colors.white,
        ),
        children: [
          Center(
            child: Container(
              color: Colors.brown,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 2000,
                      radius: 150,
                      lineWidth: 40,
                      percent: 0.4,
                      progressColor: Colors.amber,
                      backgroundColor: Colors.black,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        '40%',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                    LinearPercentIndicator(
                      animation: true,
                      animationDuration: 2000,
                      lineHeight: 40,
                      percent: 0.4,
                      progressColor: Colors.amber,
                      backgroundColor: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
