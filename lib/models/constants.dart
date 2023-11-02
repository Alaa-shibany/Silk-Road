import '../screens/home_screen.dart';
import '../screens/sectors_screen.dart';

class Constants {
  // ignore: non_constant_identifier_names
  static bool DidSelectLanguage = false;
  static int index = 0;
  static List screens = [
    const HomeScreen(),
    const HomeScreen(),
    const SectorsScreen(),
    const HomeScreen(),
  ];
}
