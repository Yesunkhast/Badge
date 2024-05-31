import 'package:demo/colors.dart';
import 'package:demo/widgets/Splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await Firebase.initializeApp();
  runApp(const LimeApp());
}

class LimeApp extends StatelessWidget {
  const LimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SpScreen(),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Nunito',
        appBarTheme: const AppBarTheme(backgroundColor: AppColor.appBarColor),
        scaffoldBackgroundColor: AppColor.backgroundColor,
        inputDecorationTheme: const InputDecorationTheme(
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            errorStyle: TextStyle(fontSize: 14),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              borderSide: BorderSide(color: Colors.transparent),
            )),
        textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            displaySmall: TextStyle(
              fontSize: 16,
            ),
            labelSmall: TextStyle(
              fontSize: 14,
            ),
            headlineSmall: TextStyle(fontSize: 16),
            bodySmall: TextStyle(
              fontSize: 18,
            )),
      ),
    );
  }
}
