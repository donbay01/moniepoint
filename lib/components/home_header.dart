import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

import '../models/property_model.dart';
import '../theme/colors.dart';
import '../theme/text_style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SlideInLeft(
          from: 50,
          delay: const Duration(milliseconds: 50),
          child: Container(
            height: height * 0.05,
            decoration: BoxDecoration(
                color: primaryWhite,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.locationDot,
                    color: textBrown,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '${property[0].address}',
                    style: smallBold(textBrown),
                  )
                ],
              ),
            ),
          ),
        ),
        ElasticIn(
          delay: const Duration(milliseconds: 70),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
            backgroundColor: primaryOrange,
            radius: 22,
          ),
        ),
      ],
    );
  }
}
