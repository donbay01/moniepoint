import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:monie_homes/pages/dashboard/dashboard.dart';

import '../../theme/colors.dart';
import '../../theme/text_style.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/background.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to Monie Homes',style: largeText(primaryBlack),),
              SizedBox(height: 0,),
              Text('Turning houses into homes.',style:mediumBold(primaryBlack),),
              SizedBox(height: 80,),
              SizedBox(
                height: height * 0.2,
                child: const Image(
                  image: AssetImage('assets/mainLogo.png'),
                ),
              ),
              SizedBox(height: 100,),

              SizedBox(
                height: 20,
              ),
              SlideInUp(
                from: 100,
                delay: const Duration(milliseconds: 300),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Dashboard(),
                      ),
                    );
                  },
                  child: Text(
                    'Begin',
                    style: mediumBold(primaryBlack),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundOrange,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 130),
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: primaryOrange, width: 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
