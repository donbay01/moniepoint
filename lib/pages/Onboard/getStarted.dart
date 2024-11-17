import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monie_homes/pages/dashboard/dashboard.dart';
import 'package:provider/provider.dart';

import '../../components/loader.dart';
import '../../models/user.dart';
import '../../theme/colors.dart';
import '../../theme/text_style.dart';

class Getstarted extends StatefulWidget {
  Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  final nameController = TextEditingController();
  final cityController = TextEditingController();
  bool isLoading = false;

  Future createUser({required String name, required String city}) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    final user = User(name: name, city: city,id: docUser.id);
    final json = user.toJson();
    if (nameController.text.isEmpty) {
      displayToastMessage("Kindly enter your nickname", textBrown);
    } else if (cityController.text.isEmpty) {
      displayToastMessage("Kindly enter your Dream city", textBrown);
    }
    else {

      setState(() {
        isLoading = true;
      });
      await docUser.set(json);

      setState(() {
        isLoading = false;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => const Dashboard(),
        ),
      );
    }


  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: isLoading == false ?
        SingleChildScrollView(
          child: Container(
            height: height,
            width: width,
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
                  SizedBox(height: 30,),
                  Text(
                    'Monie Homes',
                    style: GoogleFonts.acme(fontSize: 45, color: primaryBlack),
                  ),
                  Text(
                    'Turning houses into homes.',
                    style: GoogleFonts.lugrasimo(
                      fontSize: 16,
                      color: textBrown,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: height * 0.2,
                    child: const Image(
                      image: AssetImage('assets/mainLogo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Let's personalise your experience.\nEnter your Nickname and Dream city.",
                    style: mediumText(primaryBlack),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Nick Name',
                      labelStyle: smallBold(textBrown),
                      hintText: 'Enter your Nick Name',
                      hintStyle: smallText(primaryBlack),
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: textBrown,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: primaryOrange,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: cityController,
                    decoration: InputDecoration(
                      labelText: 'Dream city',
                      labelStyle: smallBold(textBrown),
                      hintText: 'Enter your Dream City',
                      hintStyle: smallText(primaryBlack),
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: textBrown,
                          width: 0.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: primaryOrange,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  SlideInUp(
                    from: 100,
                    delay: const Duration(milliseconds: 300),
                    child: ElevatedButton(
                      onPressed: () {
                        Provider.of<UserData>(context, listen: false)
                            .setUserName(nameController.text);
                        final name = nameController.text;
                        final city = cityController.text;
                        createUser(name: name, city: city);

                      },
                      child: Text(
                        'Get Started',
                        style: smallBold(primaryWhite),
                        textAlign: TextAlign.center,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBlack,
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 120),
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
        ) : Center(
          child: LoadingPage(),
        ),
      ),
    );
  }
  displayToastMessage(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 1),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: mediumText(primaryWhite),
        ),
        backgroundColor: color,
      ),
    );
  }
}
