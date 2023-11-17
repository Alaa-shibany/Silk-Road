import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/create_account_screen/circle_image_picker.dart';

import '../../styles/app_colors.dart';
import '../form_widget.dart';

// ignore: must_be_immutable
class MainPageWidget extends StatefulWidget {
  MainPageWidget({super.key, required this.mediaQuery});
  Size mediaQuery;

  @override
  State<MainPageWidget> createState() => _FormCreatAccountWidgetState();
}

class _FormCreatAccountWidgetState extends State<MainPageWidget> {
  FocusNode passNode = FocusNode();
  FocusNode repassNode = FocusNode();
  FocusNode nameNode = FocusNode();
  FocusNode cardNumberNode = FocusNode();
  FocusNode cardNameNode = FocusNode();
  FocusNode expireNode = FocusNode();
  FocusNode securityNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String repassword = '';
  File? userImagePath;
  String userNameOnCard = '';
  String userNumberOnCard = '';
  String userExpirdate = '';
  String userSecuritycode = '';

  bool obscureText = true;
  File? userImage;
  void _togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleImagePicker(
                    mediaQuery: widget.mediaQuery,
                    userImage: userImage,
                    pickImageFromCamera: pickImageFromCamera,
                    pickImageFromGallery: pickImageFromGallery),
                Text(
                  LocaleKeys.createanaccount.tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.darkPurpulColor,
                      fontSize: widget.mediaQuery.height / 40),
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.mediaQuery.width / 10),
                  child: FormWidget(
                    textInputType: TextInputType.text,
                    isNormal: true,
                    obscureText: false,
                    togglePasswordVisibility: () {},
                    mediaQuery: widget.mediaQuery,
                    textInputAction: TextInputAction.next,
                    labelText: LocaleKeys.email.tr(),
                    hintText: 'example@gmail.com',
                    focusNode: nameNode,
                    nextNode: passNode,
                    validationFun: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.enteremail.tr();
                      } else if (!value.contains('@') || !value.contains('.')) {
                        return LocaleKeys.enteravalemail.tr();
                      }
                      setState(() {
                        email = value;
                      });
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.mediaQuery.width / 10),
                  child: FormWidget(
                    textInputType: TextInputType.text,
                    isNormal: false,
                    obscureText: obscureText,
                    togglePasswordVisibility: _togglePasswordVisibility,
                    mediaQuery: widget.mediaQuery,
                    textInputAction: TextInputAction.next,
                    labelText: LocaleKeys.password.tr(),
                    hintText: LocaleKeys.password.tr(),
                    focusNode: passNode,
                    nextNode: repassNode,
                    validationFun: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.enterpass.tr();
                      } else if (value.length < 8) {
                        return LocaleKeys.enteravalpass.tr();
                      }
                      setState(() {
                        password = value;
                      });
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.mediaQuery.width / 10),
                  child: FormWidget(
                    textInputType: TextInputType.text,
                    isNormal: true,
                    obscureText: true,
                    togglePasswordVisibility: () {},
                    mediaQuery: widget.mediaQuery,
                    textInputAction: TextInputAction.done,
                    labelText: LocaleKeys.reenterpass.tr(),
                    hintText: LocaleKeys.reenterpass.tr(),
                    focusNode: repassNode,
                    nextNode: repassNode,
                    validationFun: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.enterpass.tr();
                      } else if (value != password) {
                        return LocaleKeys.passdontmatch.tr();
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 20,
                ),
                Image(
                  image: const AssetImage('assets/images/visa.png'),
                  height: widget.mediaQuery.height / 25,
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 60,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.mediaQuery.width / 10),
                  child: FormWidget(
                    textInputType: TextInputType.text,
                    isNormal: true,
                    obscureText: false,
                    togglePasswordVisibility: () {},
                    mediaQuery: widget.mediaQuery,
                    textInputAction: TextInputAction.next,
                    labelText: LocaleKeys.nameoncard.tr(),
                    hintText: 'Ex. Johen Website',
                    focusNode: cardNameNode,
                    nextNode: cardNumberNode,
                    validationFun: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.enternamecard.tr();
                      }
                      setState(() {
                        userNameOnCard = value;
                      });
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 80,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: widget.mediaQuery.width / 10),
                  child: FormWidget(
                    textInputType: TextInputType.number,
                    isNormal: true,
                    obscureText: false,
                    togglePasswordVisibility: () {},
                    mediaQuery: widget.mediaQuery,
                    textInputAction: TextInputAction.next,
                    labelText: LocaleKeys.cardnumber.tr(),
                    hintText: '1234 5678 9102 3456',
                    focusNode: cardNumberNode,
                    nextNode: expireNode,
                    validationFun: (value) {
                      if (value == null || value.isEmpty) {
                        return LocaleKeys.cardnotval.tr();
                      }
                      if (value.length < 19) {
                        return LocaleKeys.cardnotval.tr();
                      }
                      setState(() {
                        userNumberOnCard = value;
                      });
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 80,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: widget.mediaQuery.height / 16,
                          width: widget.mediaQuery.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          width: widget.mediaQuery.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                            textInputAction: TextInputAction.done,
                            focusNode: securityNode,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: LocaleKeys.securitycode.tr(),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintText: LocaleKeys.securitycode.tr(),
                              hintStyle: const TextStyle(color: Colors.black38),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              // Add padding
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: AppColors.sinkColor, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: AppColors.sinkColor, width: 2.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return LocaleKeys.enterseccod.tr();
                              }
                              setState(() {
                                userSecuritycode = value;
                              });
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: widget.mediaQuery.width / 30,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: widget.mediaQuery.height / 16,
                          width: widget.mediaQuery.width / 2.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          width: widget.mediaQuery.width / 2.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.datetime,
                            textInputAction: TextInputAction.next,
                            focusNode: expireNode,
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).requestFocus(securityNode);
                            },
                            decoration: InputDecoration(
                              labelText: LocaleKeys.expirydate.tr(),
                              labelStyle: const TextStyle(color: Colors.black),
                              hintText: 'MM/YY',
                              hintStyle: const TextStyle(color: Colors.black38),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              // Add padding
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: AppColors.sinkColor, width: 2.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: AppColors.sinkColor, width: 2.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                    color: Colors.red, width: 2.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return LocaleKeys.valexpierydate.tr();
                              }
                              setState(() {
                                userExpirdate = value;
                              });
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: widget.mediaQuery.height / 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                    if (_formKey.currentState!.validate()) {
                      // print(email);
                      // print(password);
                      // print(userImagePath);
                      // print(userNameOnCard);
                      // print(userNumberOnCard);
                      // print(userExpirdate);
                      // print(userSecuritycode);
                      data.dummy_data.add({
                        'role': 'Tourist',
                        'id': data.dummy_data.first['id'] + 1,
                        'email': email,
                        'password': password,
                        'image': userImagePath,
                        'nameOnCard': userNameOnCard,
                        'numberOnCard': userNumberOnCard,
                        'expiryDate': userExpirdate,
                        'security': userSecuritycode,
                      });
                      // print(data.dummy_data);
                    }
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.darkPurpulColor,
                  ),
                  child: Text(
                    LocaleKeys.createanaccount.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future pickImageFromGallery() async {
    final returndImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returndImage == null) return;
    setState(() {
      userImage = File(returndImage.path);
    });
  }

  Future pickImageFromCamera() async {
    final returndImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returndImage == null) return;
    setState(() {
      userImage = userImagePath = File(returndImage.path);
    });
  }
}
