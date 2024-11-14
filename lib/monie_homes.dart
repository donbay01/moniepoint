import 'package:flutter/material.dart';
import 'package:monie_homes/pages/splash_screen/splash_screen.dart';

class MonieHomes extends StatelessWidget {
  const MonieHomes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
        useMaterial3: true,
      ),
      home:  const SplashScreen(),
    );
  }
}
