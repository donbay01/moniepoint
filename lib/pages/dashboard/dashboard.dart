import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:monie_homes/pages/home/home_page.dart';
import 'package:monie_homes/pages/map/location.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../theme/colors.dart';
import '../nav_empty/index.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        PersistentTabView(
          navBarHeight: 65,
          backgroundColor: primaryBlack,
          // hideNavigationBar: !showNav,
          tabs: [
            PersistentTabConfig(
              screen: Location(),
              item: ItemConfig(
                icon: CircleAvatar(
                  backgroundColor: navBlack,
                  radius: 25,
                  child:  Icon(
                    FontAwesomeIcons.searchLocation,
                    size: 20,
                    color: primaryWhite,
                  ),
                ),
                activeForegroundColor: primaryOrange,
              ),
            ),
            PersistentTabConfig(
              screen: NavEmpty(),
              item: ItemConfig(
                icon: CircleAvatar(
                  backgroundColor: navBlack,
                  radius: 25,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.solidMessage,
                      size: 20,
                      color: primaryWhite,
                    ),
                  ),
                ),
                activeForegroundColor: primaryOrange,
              ),
            ),
            PersistentTabConfig(
              screen: HomePage(),
              item: ItemConfig(
                icon: CircleAvatar(
                  backgroundColor: navBlack,
                  radius: 25,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.home,
                      size: 20,
                      color: primaryWhite,
                    ),
                  ),
                ),
                activeForegroundColor: primaryOrange,
              ),
            ),
            PersistentTabConfig(
              screen: const NavEmpty(),
              item: ItemConfig(
                icon: CircleAvatar(
                  backgroundColor: navBlack,
                  radius: 25,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 20,
                      color: primaryWhite,
                    ),
                  ),
                ),
                activeForegroundColor: primaryOrange,
              ),
            ),
            PersistentTabConfig(
              screen: NavEmpty(),
              item: ItemConfig(
                icon: CircleAvatar(
                  backgroundColor: navBlack,
                  radius: 25,
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.solidUser,
                      size: 20,
                      color: primaryWhite,
                    ),
                  ),
                ),
                activeForegroundColor: primaryOrange,
              ),
            ),
          ],
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
          avoidBottomPadding: true,
          resizeToAvoidBottomInset: false,
          navBarBuilder: (navBarConfig) => Style10BottomNavBar(
            navBarConfig: navBarConfig,
            navBarDecoration: const NavBarDecoration(
                color: primaryBlack,
              borderRadius: BorderRadius.all(Radius.circular(100))

            ),
          ),
        ),
      ],
    );
  }
}
