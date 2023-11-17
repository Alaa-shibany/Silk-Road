import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silk_road/models/user.dart';
import 'package:silk_road/screens/start_screen.dart';
import 'package:silk_road/translations/locale_keys.g.dart';

import '../common/BackgroundPaint.dart';
import '../widgets/create_account_screen/circle_image_picker.dart';

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleImagePicker(
                      mediaQuery: mediaQuery,
                      userImage: User.imageFile,
                      pickImageFromCamera: pickImageFromCamera,
                      pickImageFromGallery: pickImageFromGallery),
                  Text(
                    User.name,
                    style: TextStyle(
                        fontSize: mediaQuery.width / 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: mediaQuery.height / 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: mediaQuery.height / 40,
                        horizontal: mediaQuery.width / 30),
                    margin:
                        EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 245, 245, 245),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: mediaQuery.height / 90),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.user.tr(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                ),
                              ),
                              Text(
                                User.role,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: mediaQuery.height / 90,
                              top: mediaQuery.height / 90),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    LocaleKeys.email.tr(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaQuery.width / 40,
                                  ),
                                  Icon(
                                    Iconsax.user,
                                    color: Colors.brown,
                                    size: mediaQuery.width / 20,
                                  )
                                ],
                              ),
                              Text(
                                User.email,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.only(top: mediaQuery.height / 90),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    LocaleKeys.card.tr(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              25,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaQuery.width / 40,
                                  ),
                                  Icon(
                                    Iconsax.card,
                                    color: Colors.greenAccent,
                                    size: mediaQuery.width / 20,
                                  )
                                ],
                              ),
                              Text(
                                User.nameOnCard,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height / 30,
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 245, 245, 245),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width / 40,
                          vertical: mediaQuery.height / 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                LocaleKeys.language.tr(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25,
                                ),
                              ),
                              SizedBox(
                                width: mediaQuery.width / 40,
                              ),
                              Icon(
                                Icons.language,
                                color: Colors.blueAccent,
                                size: mediaQuery.width / 20,
                              )
                            ],
                          ),
                          Container(
                            width: mediaQuery.width / 3.5,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: DropdownButton<String>(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              elevation: 10,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold),
                              value: selectedLanguage,
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
                                            ? context
                                                .setLocale(const Locale('ar'))
                                            : value == 'فارسی'
                                                ? context.setLocale(
                                                    const Locale('fa'))
                                                : value == 'Русский'
                                                    ? context.setLocale(
                                                        const Locale('ru'))
                                                    : value == 'Français'
                                                        ? context.setLocale(
                                                            const Locale('fr'))
                                                        : context.setLocale(
                                                            const Locale('en'));
                                      });
                                      // ignore: use_build_context_synchronously
                                    });
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQuery.height / 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: mediaQuery.height / 40,
                        horizontal: mediaQuery.width / 30),
                    margin:
                        EdgeInsets.symmetric(horizontal: mediaQuery.width / 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 245, 245, 245),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(bottom: mediaQuery.height / 90),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  StartScreen.routName,
                                  (Route<dynamic> route) => false);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  LocaleKeys.deleteAccount.tr(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25,
                                  ),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: mediaQuery.width / 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: EdgeInsets.only(top: mediaQuery.height / 90),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  StartScreen.routName,
                                  (Route<dynamic> route) => true);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  LocaleKeys.logout.tr(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 25,
                                  ),
                                ),
                                Icon(
                                  Icons.logout,
                                  color: Colors.red,
                                  size: mediaQuery.width / 20,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
