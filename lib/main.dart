import 'package:flutter/material.dart';
import 'package:training/app_theme/global_theme.dart';
import 'package:training/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ValueNotifier<ThemeMode> _themeMode = ValueNotifier(ThemeMode.light);
  void _changeThemeMode(){
    _themeMode.value = _themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeMode,
      builder: (context, themeMode, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Training Phase",
          theme: GlobalTheme.lightThemeData,
          darkTheme: GlobalTheme.darkThemeData,
          themeMode: themeMode,
          home: HomeScreen(changeThemeMode: _changeThemeMode)
      ),
    );
  }
}
