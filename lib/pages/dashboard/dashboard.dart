import 'package:animate_do/animate_do.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:monie_homes/pages/home/home_page.dart';
import 'package:monie_homes/theme/colors.dart';
import '../../components/map_icons.dart';
import '../map/location.dart';

enum _SelectedTab { search, add, home, favorite, person }

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  getPage() {
    if (_selectedTab == _SelectedTab.home) {
      return const HomePage();
    }

    return const MapScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlack,
      extendBody: true,
      floatingActionButton:
      _selectedTab == _SelectedTab.home ? null : const MapIcons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: getPage(),
      bottomNavigationBar: SlideInUp(
        from: 500,
        delay: const Duration(milliseconds: 900),
        duration: const Duration(milliseconds: 1000),
        child: CrystalNavigationBar(
          height: 80,
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          indicatorColor: primaryOrange,
          unselectedItemColor: primaryWhite,
          selectedItemColor: primaryOrange,
          backgroundColor: navBlack,
          // outlineBorderColor: Colors.black.withOpacity(0.1),
          onTap: _handleIndexChanged,
          items: [
            CrystalNavigationBarItem(
              icon: IconlyBold.search,
            ),

            CrystalNavigationBarItem(
              icon: IconlyBold.chat,

            ),

            CrystalNavigationBarItem(
              icon: IconlyBold.home,
            ),

            CrystalNavigationBarItem(
              icon: IconlyBold.heart,
              selectedColor: Colors.red,
            ),

            /// Profile
            CrystalNavigationBarItem(
              icon: FontAwesomeIcons.solidUser,
            ),
          ],
        ),
      ),
    );
  }
}
