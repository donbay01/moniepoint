// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../theme/colors.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundOrange,
      child: SpinKitSpinningLines(
        duration: Duration(seconds: 3),
        size: 90,
        color: primaryOrange,
      ),
    );
  }
}
