import 'dart:async';
import 'package:baasid_app/components/View/home.dart';
import 'package:baasid_app/components/Initial/login_view.dart';
import 'package:baasid_app/components/Initial/prelogo_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Initialpage(),
        '/home': (context) => const Home(),
      },
    );
  }
}

class Initialpage extends StatefulWidget {
  const Initialpage({super.key});

  @override
  State<Initialpage> createState() => _InitialpageState();
}

class _InitialpageState extends State<Initialpage> {
  bool isInitial = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      setState(() {
        isInitial = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isInitial ? const PreLogoView() : const LoginView();
  }
}
