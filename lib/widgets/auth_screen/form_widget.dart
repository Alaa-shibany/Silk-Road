import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/common/snack_bar_widget.dart';
import 'package:silk_road/data/dummy_data.dart';
import 'package:silk_road/models/user.dart';
import 'package:silk_road/screens/create_account_screen.dart';
import 'package:silk_road/screens/navigation_screen.dart';
import 'package:silk_road/translations/locale_keys.g.dart';
import 'package:silk_road/widgets/form_widget.dart';

import '../../styles/app_colors.dart';

// ignore: must_be_immutable
class FormStartWidget extends StatefulWidget {
  FormStartWidget({super.key, required this.mediaQuery});
  Size mediaQuery;

  @override
  State<FormStartWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormStartWidget> {
  FocusNode passNode = FocusNode();
  FocusNode nameNode = FocusNode();
  String enterdEmail = '';
  String enterdPass = '';

  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
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
                      enterdEmail = value;
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
                  textInputAction: TextInputAction.done,
                  labelText: LocaleKeys.password.tr(),
                  hintText: LocaleKeys.password.tr(),
                  focusNode: passNode,
                  nextNode: passNode,
                  validationFun: (value) {
                    if (value == null || value.isEmpty) {
                      return LocaleKeys.enterpass.tr();
                    } else if (value.length < 8) {
                      return LocaleKeys.enteravalpass.tr();
                    }
                    setState(() {
                      enterdPass = value;
                    });
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: widget.mediaQuery.height / 80,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    for (int i = 0; i < data.dummy_data.length; i++) {
                      if (data.dummy_data[i]['email'] == enterdEmail &&
                          data.dummy_data[i]['password'] == enterdPass) {
                        User.role = data.dummy_data[i]['role'];
                        User.name = data.dummy_data[i]['name'];
                        User.email = data.dummy_data[i]['email'];
                        User.password = data.dummy_data[i]['password'];
                        User.imageFile = data.dummy_data[i]['image'];
                        User.nameOnCard = data.dummy_data[i]['nameOnCard'];
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            NavigationScreen.routName,
                            (Route<dynamic> route) => false);
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBarWidget(
                                  title: LocaleKeys.success.tr(),
                                  message: LocaleKeys.welcom.tr(),
                                  contentType: ContentType.success)
                              .getSnakBar());
                      } else {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBarWidget(
                                  title: LocaleKeys.sorry.tr(),
                                  message: LocaleKeys.passoremail.tr(),
                                  contentType: ContentType.failure)
                              .getSnakBar());
                      }
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkPurpulColor,
                ),
                child: SizedBox(
                  width: widget.mediaQuery.width / 1.5,
                  child: Text(
                    LocaleKeys.signin.tr(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: widget.mediaQuery.height / 20,
              ),
              Text(
                '______________________ ${LocaleKeys.or.tr()} ______________________',
                style: const TextStyle(color: Colors.black26),
              ),
              SizedBox(
                height: widget.mediaQuery.height / 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CreateAccountScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
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
    );
  }
}
