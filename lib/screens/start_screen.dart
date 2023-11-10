import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/common/transition.dart';
import 'package:silk_road/models/constants.dart';
import 'package:silk_road/screens/auth_screen.dart';
import 'package:silk_road/widgets/start_screen/language_list_widget.dart';

import '../translations/locale_keys.g.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  // ignore: deprecated_member_use
  Locale appLocale = window.locale;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    String selectedLanguage = context.locale.toString() == 'en'
        ? 'English'
        : context.locale.toString() == 'ar'
            ? 'العربية'
            : context.locale.toString() == 'fa'
                ? 'فارسی'
                : context.locale.toString() == 'fr'
                    ? 'Français'
                    : 'Русский';

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: mediaQuery.width,
            height: mediaQuery.height,
            child: const Opacity(
              opacity: 0.5,
              child: Image(
                image: AssetImage('assets/images/startScreenBG.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          LanguageList(
              selectedLanguage: selectedLanguage, mediaQuery: mediaQuery),
          Positioned(
            bottom: mediaQuery.height / 30,
            right: context.locale.toString() == 'ar' ||
                    context.locale.toString() == 'fa'
                ? mediaQuery.width / 10
                : context.locale.toString() == 'ru'
                    ? mediaQuery.width / 1.8
                    : context.locale.toString() == 'en'
                        ? mediaQuery.width / 1.5
                        : mediaQuery.width / 1.6,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: () {
                setState(() {
                  Constants.DidSelectLanguage = true;
                });

                Navigator.of(context)
                    .push(customPageRouteBuilder(const AuthScreen()));
              },
              label: Text(
                LocaleKeys.next.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
