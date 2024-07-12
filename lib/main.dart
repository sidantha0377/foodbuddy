import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foodbuddy/firebase_options.dart';
import 'package:foodbuddy/screens/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Buddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffc529)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
