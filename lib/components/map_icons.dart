import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:monie_homes/theme/colors.dart';
import 'package:monie_homes/theme/text_style.dart';

class MapIcons extends StatelessWidget {
  const MapIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FloatingActionButton.small(
                  backgroundColor: mapGrey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Icon(IconlyLight.bookmark,color: primaryWhite,),
                ),
                SizedBox(height: 5,),
                FloatingActionButton.small(
                  backgroundColor: mapGrey,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Icon(IconlyLight.send,color: primaryWhite,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: FloatingActionButton.extended(
                backgroundColor: mapGrey,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                icon: Icon(Icons.sort,color: primaryWhite,),
                label: Text('List of variants',style: mediumText(primaryWhite),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
