import 'package:animate_do/animate_do.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/text_style.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideInLeft(
          from: 50,
          delay: const Duration(milliseconds: 100),
          child: Text(
            'Hi, Marina',
            style: mediumSemiBold(textBrown),
          ),
        ),
        SlideInLeft(
          from: 50,
          delay: const Duration(milliseconds: 200),
          child: Text(
            "let’s select your\nperfect place",
            style: boldText(primaryBlack),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElasticIn(
              delay: const Duration(milliseconds: 400),
              duration: const Duration(milliseconds: 2000),
              child: Container(
                height: height * 0.25,
                width: width * 0.4,
                decoration: const BoxDecoration(
                  color: primaryOrange,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BUY',
                        style: smallBold(primaryWhite),
                      ),
                      const SizedBox(height: 10),
                      Countup(
                        begin: 0,
                        end: 1034,
                        duration: Duration(seconds: 1),
                        separator: ' ',
                        style: boldText(primaryWhite),
                      ),
                      Text('offers',
                          style: smallBold(primaryWhite)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            ElasticIn(
              delay: const Duration(milliseconds: 400),
              duration: const Duration(milliseconds: 2000),
              child: Container(
                height: height * 0.2,
                width: width * 0.4,
                decoration: BoxDecoration(
                  color: offWhite,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('RENT', style: smallBold(textBrown)),
                    const SizedBox(height: 8),
                    Countup(
                      begin: 0,
                      end: 2212,
                      duration: Duration(seconds: 1),
                      separator: ' ',
                      style: boldText(textBrown),
                    ),
                    Text(
                      'offers',
                      style: smallBold(textBrown),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
