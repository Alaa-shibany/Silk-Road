import 'dart:io';

class User {
  static String role = '';
  static String name = '';
  static String email = '';
  static String password = '';
  static File? imageFile;
  static String nameOnCard = '';

  void getUserData() {
    print('role = $role');
    print('name = $name');
    print('email = $email');
    print('password = $password');
    print('image = $imageFile');
    print('name on card = $nameOnCard');
  }
}
