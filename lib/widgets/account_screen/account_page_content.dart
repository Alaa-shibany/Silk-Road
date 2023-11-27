import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:silk_road/models/user.dart';
import 'package:silk_road/screens/start_screen.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/account_screen/container_widget.dart';
import 'package:silk_road/widgets/account_screen/list_tile_widget.dart';
import 'package:silk_road/widgets/create_account_screen/circle_image_picker.dart';

class AccountBodyContent extends StatelessWidget {
  const AccountBodyContent({
    super.key,
    required this.mediaQuery,
    required this.pickImageFromCamera,
    required this.pickImageFromGallery,
    this.onChanged,
    this.items,
    this.value,
  });
  final Size mediaQuery;
  final List<DropdownMenuItem<String>>? items;
  final Function pickImageFromCamera;
  final Function pickImageFromGallery;
  final void Function(String?)? onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //User image
        CircleImagePicker(
            mediaQuery: mediaQuery,
            userImage: User.imageFile,
            pickImageFromCamera: pickImageFromCamera,
            pickImageFromGallery: pickImageFromGallery),
        //User name
        Text(
          User.name,
          style: TextStyle(
              fontSize: mediaQuery.width / 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: mediaQuery.height / 30,
        ),
        //User & account & card
        ContainerAccountWidget(
          mediaQuery: mediaQuery,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: mediaQuery.height / 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTileAccountWidget(
                      mediaQuery: mediaQuery,
                      onTap: () {},
                      title: LocaleKeys.user.tr(),
                      icon: const SizedBox(
                        width: 0,
                      ),
                    ),
                    Text(
                      User.role,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: MediaQuery.of(context).size.width / 25,
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
                    ListTileAccountWidget(
                      mediaQuery: mediaQuery,
                      onTap: () {},
                      title: LocaleKeys.email.tr(),
                      icon: Icon(
                        Iconsax.user,
                        color: Colors.brown,
                        size: mediaQuery.width / 20,
                      ),
                    ),
                    Text(
                      User.email,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: MediaQuery.of(context).size.width / 25,
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
                    ListTileAccountWidget(
                      mediaQuery: mediaQuery,
                      onTap: () {},
                      title: LocaleKeys.card.tr(),
                      icon: Icon(
                        Iconsax.card,
                        color: Colors.greenAccent,
                        size: mediaQuery.width / 20,
                      ),
                    ),
                    Text(
                      User.nameOnCard,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: MediaQuery.of(context).size.width / 25,
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
        //Current balance
        ContainerAccountWidget(
          mediaQuery: mediaQuery,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: mediaQuery.height / 90, top: mediaQuery.height / 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTileAccountWidget(
                    mediaQuery: mediaQuery,
                    onTap: () {},
                    title: LocaleKeys.currentBalance.tr(),
                    icon: Icon(
                      Iconsax.dollar_circle,
                      color: Colors.amber,
                      size: mediaQuery.width / 20,
                    )),
                Text(
                  User.email,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: MediaQuery.of(context).size.width / 25,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: mediaQuery.height / 30,
        ),
        //Change app language
        ContainerAccountWidget(
          mediaQuery: mediaQuery,
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
                      fontSize: MediaQuery.of(context).size.width / 25,
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
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: DropdownButton<String>(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    elevation: 10,
                    style: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                    value: value,
                    onChanged: onChanged,
                    items: items),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mediaQuery.height / 30,
        ),
        //Delete account & log out
        ContainerAccountWidget(
          mediaQuery: mediaQuery,
          child: Column(
            children: [
              ListTileAccountWidget(
                mediaQuery: mediaQuery,
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      StartScreen.routName, (Route<dynamic> route) => true);
                },
                title: LocaleKeys.deleteAccount.tr(),
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: mediaQuery.width / 20,
                ),
              ),
              const Divider(),
              ListTileAccountWidget(
                mediaQuery: mediaQuery,
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      StartScreen.routName, (Route<dynamic> route) => true);
                },
                title: LocaleKeys.logout.tr(),
                icon: Icon(
                  Icons.logout,
                  color: Colors.red,
                  size: mediaQuery.width / 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mediaQuery.height / 40,
        )
      ],
    );
  }
}
