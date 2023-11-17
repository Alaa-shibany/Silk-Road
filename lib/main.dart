import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:silk_road/screens/auth_screen.dart';
import 'package:silk_road/screens/navigation_screen.dart';
import 'package:silk_road/screens/start_screen.dart';

import 'package:silk_road/translations/codegen_loader.g.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations/',
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
        Locale('fa'),
        Locale('fr'),
        Locale('ru'),
      ],
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(241, 228, 205, 1)),
        fontFamily: 'Messiri',
        useMaterial3: true,
      ),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      home: const StartScreen(),
      routes: {
        NavigationScreen.routName: (context) => const NavigationScreen(),
        StartScreen.routName: (context) => const StartScreen(),
      },
    );
  }
}
