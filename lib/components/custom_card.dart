// import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:animate_do/animate_do.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:monie_homes/theme/text_style.dart';

import '../models/property_model.dart';
import '../theme/colors.dart';

class CustomCard extends StatelessWidget {
  final bool isCenter;
  final bool isLong;
  final double? radius;
  final String image;
  final String address;

  const CustomCard({
    super.key,
    required this.isCenter,
    this.isLong = false,
    this.radius,
    required this.image,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * (isLong ? 1 : 0.24),
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? (isLong ? 16 : 32)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? (isLong ? 16 : 32)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(image: AssetImage(image), fit: BoxFit.cover),
            SlideInLeft(
              from: 500,
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 1000),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 14,
                  ),
                  child: BlurryContainer(
                    blur: 3,
                    height: size.height * 0.06,
                    width: size.width * 0.86,
                    elevation: 0,
                    color: textBrown.withOpacity(0.7),
                    padding: const EdgeInsets.all(8),
                    borderRadius: const BorderRadius.all(Radius.circular(32)),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Row(
                          mainAxisAlignment: isCenter
                              ? MainAxisAlignment.center
                              : MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 5,),
                            Text(
                              address,
                              style: smallBold(primaryBlack),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            backgroundColor: offWhite,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
