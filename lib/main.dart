import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:guide_investimentos/routes.dart';
import 'package:guide_investimentos/shared/core/inject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Guide Investimentos',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Container(),
      initialRoute: '/splash',
      getPages: appRoutes(),
      initialBinding: Inject(),
    );
  }
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF00837F),
    primary: const Color(0xFF00837F),
    onPrimary: const Color(0xFFFFFFFF),
    primaryContainer: const Color(0xFFE8F7FC),
    onPrimaryContainer: const Color(0xFF116D8E),
    background: const Color(0xFFFFFFFF),
    onBackground: const Color(0xFF172E37),
    surface: const Color(0xFFFFFFFF),
    onSurface: const Color(0xFF172E37),
    error: const Color(0xFFCE2A2A),
    onError: const Color(0xFFFFFFFF),
    onErrorContainer: const Color(0xFF801717),
    errorContainer: const Color(0xFFFFCECE),
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    foregroundColor: Color(0xFF00837F),
    backgroundColor: Color(0xFF00837F),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF00837F),
  ),
);
