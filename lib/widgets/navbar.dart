// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mabike/JourneysPages/RentBike.dart';
import 'package:mabike/constant.dart';
import 'package:mabike/EventPages/eventPage.dart';
import 'package:mabike/inbox.dart';
import 'package:mabike/profile.dart';
import 'package:mabike/widgets/discover/discoverPage.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  NavBarState createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int index = 0;

  final screens = [
    DiscoverPage(),
    EventPage(),
    RentPage(),
    InboxPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
            indicatorColor: Color.fromARGB(24, 0, 0, 0)),
        child: NavigationBar(
          backgroundColor: bg,
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              icon: Image.asset(
                'images/discover.png',
                width: 30,
                height: 30,
              ),
              label: '.',
            ),
            NavigationDestination(
              icon: Image.asset(
                'images/Confetti.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'images/Bike.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'images/Mailbox.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'images/User.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
