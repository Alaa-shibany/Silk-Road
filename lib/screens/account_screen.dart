import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/models/user.dart';
import 'package:silk_road/screens/start_screen.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
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
    return User.role == 'admin'
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 255, 230, 156),
              leading: IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      StartScreen.routName, (Route<dynamic> route) => false);
                },
              ),
              actions: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: mediaQuery.width / 30),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DropdownButton<String>(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        elevation: 10,
                        style: const TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.bold),
                        value: selectedLanguage,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedLanguage = newValue!;
                            data.dummy_data = data.dummy_data;
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
                                          ? context
                                              .setLocale(const Locale('fa'))
                                          : value == 'Русский'
                                              ? context
                                                  .setLocale(const Locale('ru'))
                                              : value == 'Français'
                                                  ? context.setLocale(
                                                      const Locale('fr'))
                                                  : context.setLocale(
                                                      const Locale('en'));
                                  data().resetSectors();
                                });
                              });
                        }).toList(),
                      ),
                      SizedBox(
                        width: mediaQuery.width / 30,
                      ),
                      Icon(
                        Icons.language,
                        color: Colors.black26,
                        size: mediaQuery.width / 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: data.dummy_data
                  .where(
                    (element) => element['role'] == 'tourist',
                  )
                  .toList()
                  .length,
              itemBuilder: (context, index) {
                Map<String, dynamic> account = data.dummy_data
                    .where(
                      (element) => element['role'] == 'tourist',
                    )
                    .toList()[index];
                return Container(
                  margin: EdgeInsets.symmetric(
                      vertical: mediaQuery.height / 100,
                      horizontal: mediaQuery.width / 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ExpansionTile(
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          data.dummy_data.removeAt(index);
                        });
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    clipBehavior: Clip.hardEdge,
                    leading: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: mediaQuery.width / 100,
                          vertical: mediaQuery.height / 300),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                          backgroundImage: account['image'] == null
                              ? null
                              : FileImage(account['image']),
                          radius: mediaQuery.width / 18,
                          child: account['image'] == null
                              ? const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                )
                              : const SizedBox(
                                  width: 0,
                                )),
                    ),
                    title: Text(account['name']),
                    children: [
                      ListTile(
                        title: Text(LocaleKeys.user.tr()),
                        trailing: Text(
                          account['role'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.width / 30,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(LocaleKeys.email.tr()),
                        trailing: Text(
                          account['email'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.width / 30,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(LocaleKeys.nameoncard.tr()),
                        trailing: Text(
                          account['nameOnCard'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.width / 30,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          LocaleKeys.currentBalance.tr(),
                        ),
                        trailing: Text(
                          '${account['balance']}\$',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: mediaQuery.width / 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ))
        : Scaffold(
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
                                          ? context
                                              .setLocale(const Locale('ru'))
                                          : value == 'Français'
                                              ? context
                                                  .setLocale(const Locale('fr'))
                                              : context.setLocale(
                                                  const Locale('en'));
                              data().resetSectors();
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
