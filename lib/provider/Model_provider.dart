// ignore_for_file: file_names

import '../models/model.dart';
import 'base_provider.dart';

class ModelProvider extends BaseProvider {
  final Model _model = Model();
  Model get model => _model;

  // ignore: non_constant_identifier_names
  void setTrue_PasswordVisible() {
    _model.passwordVisibility = true;
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  void setFalse_PasswordVisible() {
    _model.passwordVisibility = false;
    notifyListeners();
  }
}
