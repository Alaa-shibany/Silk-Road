import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/widgets/account_screen/account_page_content.dart';

import '../../common/BackgroundPaint.dart';
import '../../data/dummy_data.dart';

// ignore: must_be_immutable
class UserRoleWidget extends StatefulWidget {
  UserRoleWidget({
    super.key,
    required this.mediaQuery,
    required this.pickImageFromCamera,
    required this.pickImageFromGallery,
    required this.selectedLanguage,
  });
  final Size mediaQuery;
  final Function pickImageFromCamera;
  final Function pickImageFromGallery;
  late String selectedLanguage;

  @override
  State<UserRoleWidget> createState() => _UserRoleWidgetState();
}

class _UserRoleWidgetState extends State<UserRoleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          CustomPaint(
              size: Size(
                  widget.mediaQuery.width,
                  (widget.mediaQuery.width * 0.5833333333333334)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automaticallypainter: AppBarCustom(),
              painter: AppBarCustom()),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
                child: AccountBodyContent(
              mediaQuery: widget.mediaQuery,
              pickImageFromCamera: widget.pickImageFromCamera,
              pickImageFromGallery: widget.pickImageFromGallery,
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
                        data().resetSectors();
                      });
                      // ignore: use_build_context_synchronously
                    });
              }).toList(),
              value: widget.selectedLanguage,
            )),
          ),
        ],
      ),
    );
  }
}
