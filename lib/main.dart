import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:monie_homes/models/user.dart';
import 'package:provider/provider.dart';
import 'monie_homes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) => UserData(), child: const MonieHomes()));
}
