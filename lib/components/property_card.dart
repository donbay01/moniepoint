// import 'package:flutter/material.dart';
// import 'package:monie_homes/theme/colors.dart';
// import 'package:monie_homes/theme/text_style.dart';
//
// class PropertyCard extends StatelessWidget {
//   final String image;
//   final String address;
//
//   PropertyCard({super.key, required this.image, required this.address,});
//
//   bool isFullWidth = true;
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         image: DecorationImage(
//           image: AssetImage(image),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             bottom: 10,
//             left: 0,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0),
//               child: Container(
//                 height: height * 0.055,
//                 width: width * 0.9,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: slider.withOpacity(0.8)
//                 ),
//                 child: Center(
//                   child: Text(
//                     address,
//                     style: mediumText(primaryBlack),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const Positioned(
//             bottom: 10,
//             right: 10,
//             child: CircleAvatar(
//               backgroundColor: offWhite,
//               radius: 25,
//               child: Icon(
//                 Icons.arrow_forward_ios,
//                 color: Colors.black,
//                 size: 13,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }