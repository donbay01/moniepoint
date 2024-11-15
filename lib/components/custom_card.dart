// import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomCard extends StatelessWidget {
  final bool isCenter;
  final bool isLong;
  final double? radius;

  const CustomCard({
    super.key,
    required this.isCenter,
    this.isLong = false,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * (isLong ? 1 : 0.28),
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? (isLong ? 16 : 32)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? (isLong ? 16 : 32)),
        child: Stack(
          fit: StackFit.expand,
          children: [
           Image(image: AssetImage('asset/house1.png')),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 14,
                ),
                // child: BlurryContainer(
                //   blur: 5,
                //   height: 50,
                //   width: size.width * 0.86,
                //   elevation: 0,
                //   color: Colors.white.withOpacity(0.6),
                //   padding: const EdgeInsets.all(8),
                //   borderRadius: const BorderRadius.all(Radius.circular(32)),
                //   child: Stack(
                //     fit: StackFit.expand,
                //     children: [
                //       Row(
                //         mainAxisAlignment: isCenter
                //             ? MainAxisAlignment.center
                //             : MainAxisAlignment.start,
                //         children: [
                //           Text(
                //             'Gladkova St..25',
                //             style: TextStyle(
                //               fontSize: 14,
                //               fontWeight: FontWeight.w500,
                //             ),
                //           ),
                //         ],
                //       ),
                //       Align(
                //         alignment: Alignment.bottomRight,
                //         child: Container(
                //           height: 120,
                //           width: 40,
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(100),
                //           ),
                //           child: Padding(
                //             padding: const EdgeInsets.symmetric(
                //               horizontal: 13,
                //             ),
                //             child: Icon(
                //               IconlyLight.arrow_right_2,
                //               size: 15,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
