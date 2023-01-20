import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData currentTheme;

  //inicio el tema en el constructor

  ThemeProvider({
    required bool isDarkMode,
  }) : currentTheme = isDarkMode ? ThemeData.dark() : ThemeData.light();

  //metodos para cambiar el tema

  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
