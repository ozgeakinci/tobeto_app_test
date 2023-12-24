import 'package:flutter/material.dart';
import 'package:tobeto_app_1/theme/tobeto_theme.dart';

import 'package:tobeto_app_1/widget/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: TobetoAppTheme.lightTheme(),
      darkTheme: TobetoAppTheme.darkTheme(),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    ),
  );
}
