
import 'package:flutter/material.dart';
import 'package:flutter_banking_app/pages/home.dart';
import 'package:flutter_banking_app/pages/profile.dart';
import 'package:flutter_banking_app/pages/stats.dart';
import 'package:flutter_banking_app/pages/wallet.dart';
import 'package:flutter_banking_app/utils/iconly/iconly_bold.dart';
import 'package:flutter_banking_app/utils/styles.dart';

/// This is the stateful widget that the main application instantiates.
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Wallet(),
    Stats(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Styles.primaryWithOpacityColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 20, color: Styles.primaryColor),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Styles.blueColor,
        unselectedItemColor: Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Icon(IconlyBold.Home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Icon(IconlyBold.Wallet)),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Icon(IconlyBold.Chart)),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Icon(IconlyBold.Profile,)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
