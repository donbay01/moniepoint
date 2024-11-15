import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:monie_homes/components/custom_card.dart';

import '../models/property_model.dart';
import '../theme/colors.dart';
import '../theme/text_style.dart';

class HomeProperty extends StatelessWidget {
  const HomeProperty({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SlideInUp(
          from: 500,
          delay: const Duration(milliseconds: 500),
          duration: const Duration(milliseconds: 1000),
          child:
          Container(
            width: width,
            decoration: BoxDecoration(
                color: primaryWhite,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CustomCard(isCenter: true, image: '${property[1].image}', address: '${property[1].address}',),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage('${property[2].image}'),fit: BoxFit.cover)
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: CustomCard(isCenter: false, isLong: true, image: '${property[2].image}', address: '${property[2].address}')
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage('${property[3].image}'),fit: BoxFit.cover)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: CustomCard(isCenter: false, isLong: false, image: '${property[3].image}', address: '${property[3].address}')
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage('${property[4].image}'),fit: BoxFit.cover)
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: CustomCard(isCenter: false, isLong: false, image: '${property[4].image}', address: '${property[4].address}')
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
