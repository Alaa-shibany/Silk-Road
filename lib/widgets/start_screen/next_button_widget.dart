import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/translations/locale_keys.g.dart';

// ignore: must_be_immutable
class NextButton extends StatelessWidget {
  NextButton({super.key, required this.mediaQuery, required this.onPressed});
  Size mediaQuery;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: mediaQuery.height / 30,
      right:
          context.locale.toString() == 'ar' || context.locale.toString() == 'fa'
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
        onPressed: onPressed(),
        label: Text(
          LocaleKeys.next.tr(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
