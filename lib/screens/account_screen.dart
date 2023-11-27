import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silk_road/models/user.dart';
import 'package:silk_road/widgets/account_screen/account_page_content.dart';

import '../common/BackgroundPaint.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  File? userImagePath;
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
                  mediaQuery.width,
                  (mediaQuery.width * 0.5833333333333334)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automaticallypainter: AppBarCustom(),
              painter: AppBarCustom()),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
                child: AccountBodyContent(
              mediaQuery: mediaQuery,
              pickImageFromCamera: pickImageFromCamera,
              pickImageFromGallery: pickImageFromGallery,
              onChanged: (String? newValue) {
                setState(() {
                  selectedLanguage = newValue!;
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
              value: selectedLanguage,
            )),
          ),
        ],
      ),
    );
  }

  Future pickImageFromGallery() async {
    final returndImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returndImage == null) return;
    setState(() {
      User.imageFile = File(returndImage.path);
    });
  }

  Future pickImageFromCamera() async {
    final returndImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returndImage == null) return;
    setState(() {
      User.imageFile = userImagePath = File(returndImage.path);
    });
  }
}
