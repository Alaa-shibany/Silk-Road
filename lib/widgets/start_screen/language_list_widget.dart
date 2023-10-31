import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../models/size.dart';
import '../../styles/app_text_styles.dart';
import '../../translations/locale_keys.g.dart';

// ignore: must_be_immutable
class LanguageList extends StatefulWidget {
  LanguageList(
      {super.key, required this.selectedLanguage, required this.mediaQuery});
  Size mediaQuery;
  String selectedLanguage;
  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: widget.mediaQuery.height / 5,
      child: Column(
        // => this for select language
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(LocaleKeys.languagesellect.tr(),
              textScaleFactor: ScaleSize1.textScaleFactor(context),
              textAlign: TextAlign.center,
              style: AppTextStyles.main),
          SizedBox(
            height: widget.mediaQuery.height / 60,
          ),
          Container(
            width: widget.mediaQuery.width / 3.5,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: DropdownButton<String>(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              elevation: 10,
              style: const TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold),
              value: widget.selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  widget.selectedLanguage = newValue!;
                });
              },
              items: <String>[
                'العربية',
                'فارسی',
                'Русский',
                'Français',
                'English'
              ].map((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                    onTap: () async {
                      setState(() {
                        value == 'العربية'
                            ? context.setLocale(const Locale('ar'))
                            : value == 'فارسی'
                                ? context.setLocale(const Locale('fa'))
                                : value == 'Русский'
                                    ? context.setLocale(const Locale('ru'))
                                    : value == 'Français'
                                        ? context.setLocale(const Locale('fr'))
                                        : context.setLocale(const Locale('en'));
                      });
                      // ignore: use_build_context_synchronously
                    });
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
