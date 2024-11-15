import 'package:animate_do/animate_do.dart';
import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:monie_homes/components/home_body.dart';
import 'package:monie_homes/components/home_header.dart';
import 'package:monie_homes/components/home_property.dart';
import 'package:monie_homes/models/property_model.dart';
import 'package:monie_homes/theme/colors.dart';
import 'package:monie_homes/theme/text_style.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;


    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      HomeHeader(),
                      const SizedBox(
                        height: 20,
                      ),
                      HomeBody(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                HomeProperty(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
