import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
          child: Container(
            width: width,
            decoration: BoxDecoration(
                color: primaryWhite,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                      height: height * 0.22,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(image: AssetImage('${property[0].image}'),fit: BoxFit.cover)
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 10,
                            left: 0,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Container(
                                height: height * 0.055,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: slider.withOpacity(0.8)
                                ),
                                child: Center(
                                  child: Text(
                                    "${property[1].address}",
                                    style: smallBold(primaryBlack),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 10,
                            right: 8,
                            child: CircleAvatar(
                              backgroundColor: offWhite,
                              radius: 26,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: 13,
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
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
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 10,
                                left: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Container(
                                    height: height * 0.055,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: slider.withOpacity(0.8)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const SizedBox(width: 10,),
                                        Text(
                                          "${property[2].address}",
                                          style: smallBold(primaryBlack),
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 10,
                                right: 10,
                                child: CircleAvatar(
                                  backgroundColor: offWhite,
                                  radius: 26,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Container(
                                        height: height * 0.055,
                                        width: width * 0.4,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: slider.withOpacity(0.8)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 10,),
                                            Text(
                                              "${property[3].address}",
                                              style: smallBold(primaryBlack),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: CircleAvatar(
                                      backgroundColor: offWhite,
                                      radius: 26,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                              child: Stack(
                                children: [
                                  Positioned(
                                    bottom: 10,
                                    left: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Container(
                                        height: height * 0.055,
                                        width: width * 0.4,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: slider.withOpacity(0.8)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(width: 10,),
                                            Text(
                                              "${property[4].address}",
                                              style: smallBold(primaryBlack),
                                              textAlign: TextAlign.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: CircleAvatar(
                                      backgroundColor: offWhite,
                                      radius: 26,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.black,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
