import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/text_style.dart';

class AddressSlider extends StatelessWidget {
  final String address;
  final bool isFullWidth;


  const AddressSlider({super.key, required this.address, required this.isFullWidth});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: 10,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: height * 0.055,
              width: isFullWidth ? width * 0.8 : width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: slider.withOpacity(0.8)
              ),
              child: Center(
                child: Text(
                  address,
                  style: mediumText(primaryBlack),
                ),
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: offWhite,
            radius: 25,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 13,
            ),
          ),
        ),
      ],
    );
  }
}
