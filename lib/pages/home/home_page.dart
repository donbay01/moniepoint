import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

    final List<Property> property = [
      Property(image: 'assets/house1.png', address: 'Banana Island'),
      Property(image: 'assets/house1.png', address: 'Victoria Island., 25'),
      Property(image: 'assets/house2.png', address: 'Lekki Phase 1'),
      Property(image: 'assets/house3.png', address: 'GRA Ikeja., 43'),
      Property(image: 'assets/house4.png', address: 'Surulere., 10'),
    ];

    int _selectedIndex = 2;

    // List of icons for the Bottom Navigation Bar
    final List<IconData> _icons = [
      FontAwesomeIcons.searchLocation,
      FontAwesomeIcons.solidMessage,
      FontAwesomeIcons.home,
      FontAwesomeIcons.heart,
      FontAwesomeIcons.solidUser,
    ];

    // This method is called when the Bottom Navigation Bar is tapped
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }


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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: height * 0.05,
                            decoration: BoxDecoration(
                                color: primaryWhite,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.locationDot,
                                    color: textBrown,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '${property[0].address}',
                                    style: smallBold(textBrown),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const CircleAvatar(
                            backgroundImage: AssetImage('assets/profile.png'),
                            backgroundColor: primaryOrange,
                            radius: 22,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Hi, Marina',
                        style: mediumSemiBold(textBrown),
                      ),
                      Text(
                        "let’s select your\nperfect place",
                        style: boldText(primaryBlack),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: height * 0.2,
                              decoration: const BoxDecoration(
                                color: primaryOrange,
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'BUY',
                                      style: smallBold(primaryWhite),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      '1 034',
                                      style: boldText(primaryWhite),
                                    ),
                                    Text('offers',
                                        style: smallBold(primaryWhite)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Container(
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                color: offWhite,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 8,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('RENT', style: smallBold(textBrown)),
                                  const SizedBox(height: 8),
                                  Text(
                                    '2 212',
                                    style: boldText(textBrown),
                                  ),
                                  Text(
                                    'offers',
                                    style: smallBold(textBrown),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: primaryWhite,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.22,
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('${property[0].image}'),fit: BoxFit.cover)
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 10,
                                left: 0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Container(
                                    height: height * 0.055,
                                    width: width * 0.9,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: slider.withOpacity(0.8)
                                    ),
                                    child: Center(
                                      child: Text(
                                        "${property[1].address}",
                                        style: mediumBold(primaryBlack),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 10,
                                right: 8,
                                child: CircleAvatar(
                                  backgroundColor: offWhite,
                                  radius: 26,
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 13,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: height * 0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(image: AssetImage('${property[2].image}'),fit: BoxFit.cover)
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      bottom: 10,
                                      left: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                        child: Container(
                                          height: height * 0.055,
                                          width: width * 0.4,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: slider.withOpacity(0.8)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              const SizedBox(width: 10,),
                                              Text(
                                                "${property[2].address}",
                                                style: smallBold(primaryBlack),
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: CircleAvatar(
                                        backgroundColor: offWhite,
                                        radius: 26,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.black,
                                          size: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    height: height * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(image: AssetImage('${property[3].image}'),fit: BoxFit.cover)
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 10,
                                          left: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                            child: Container(
                                              height: height * 0.055,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: slider.withOpacity(0.8)
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  const SizedBox(width: 10,),
                                                  Text(
                                                    "${property[3].address}",
                                                    style: smallBold(primaryBlack),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          bottom: 10,
                                          right: 10,
                                          child: CircleAvatar(
                                            backgroundColor: offWhite,
                                            radius: 26,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.black,
                                              size: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: height * 0.2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(image: AssetImage('${property[4].image}'),fit: BoxFit.cover)
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 10,
                                          left: 0,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                            child: Container(
                                              height: height * 0.055,
                                              width: width * 0.4,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: slider.withOpacity(0.8)
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  const SizedBox(width: 10,),
                                                  Text(
                                                    "${property[4].address}",
                                                    style: smallBold(primaryBlack),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Positioned(
                                          bottom: 10,
                                          right: 10,
                                          child: CircleAvatar(
                                            backgroundColor: offWhite,
                                            radius: 26,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.black,
                                              size: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
