import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../translations/locale_keys.g.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget(
      {super.key, required this.mediaQuery, required this.onTabChange});
  final Size mediaQuery;
  final void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 230, 156),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mediaQuery.width / 15,
            vertical: mediaQuery.height / 200),
        child: GNav(
          backgroundColor: const Color.fromARGB(255, 255, 230, 156),
          color: const Color.fromRGBO(50, 41, 16, 170),
          curve: Curves.easeInSine,
          activeColor: const Color.fromARGB(255, 50, 41, 16),
          tabBackgroundColor: const Color.fromRGBO(50, 41, 16, 220),
          gap: 8,
          padding: EdgeInsets.all(mediaQuery.height / 60),
          onTabChange: onTabChange,
          tabs: [
            const GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            const GButton(
              icon: Iconsax.map4,
              text: 'Map',
            ),
            GButton(
              icon: Iconsax.category_25,
              text: LocaleKeys.sectors.tr(),
            ),
            const GButton(
              icon: Icons.manage_accounts_outlined,
              text: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
