import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../translations/locale_keys.g.dart';

// ignore: must_be_immutable
class SearchBarWidget extends StatelessWidget {
  SearchBarWidget(
      {super.key, required this.searchController, required this.onChanged});
  TextEditingController? searchController;
  void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 50,
        child: TextField(
          controller: searchController,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: LocaleKeys.search.tr(),
            fillColor: Colors.white.withOpacity(0.5),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  30.0), // Change this to your desired radius
            ),
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
