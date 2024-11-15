import 'dart:async';
import 'package:flutter/material.dart';
import 'package:monie_homes/pages/Onboard/getStarted.dart';
import 'package:monie_homes/pages/dashboard/dashboard.dart';
import 'package:monie_homes/pages/home/home_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    _timer = Timer(
      const Duration(seconds: 2),
          () => Navigator.of(context).push(
        _createRoute(),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFC27C),
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.5,
          child: const Image(
            image: AssetImage('assets/mainLogo.png'),
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>  Getstarted(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
