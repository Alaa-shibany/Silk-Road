import 'package:flutter/material.dart';
import 'package:silk_road/models/constants.dart';
import 'package:silk_road/widgets/navigation_screen/navigation_bar_widget.dart';

class NavigationScreen extends StatefulWidget {
  static const String routName = '/navigation-screen';
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: NavigationBarWidget(
        mediaQuery: mediaQuery,
        onTabChange: (value) {
          setState(() {
            Constants.index = value;
          });
        },
      ),
      body: Stack(
        children: [
          Constants.screens[Constants.index],
        ],
      ),
    );
  }
}
