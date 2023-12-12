import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:silk_road/models/user.dart';
import 'package:silk_road/widgets/account_screen/admin_role_widget.dart';
import 'package:silk_road/widgets/account_screen/user_role_widget.dart';

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
        ? AdminRoleWidget(
            mediaQuery: mediaQuery, selectedLanguage: selectedLanguage)
        : UserRoleWidget(
            mediaQuery: mediaQuery,
            pickImageFromCamera: pickImageFromCamera,
            pickImageFromGallery: pickImageFromGallery,
            selectedLanguage: selectedLanguage);
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
