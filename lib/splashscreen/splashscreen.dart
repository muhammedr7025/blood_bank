import 'package:blood_bank/welcome/welcome.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToWelcome();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/background.jpg")),
    );
  }

  Future<void> goToWelcome() async {
    await Future.delayed(const Duration(seconds: 3));
    await Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => const WelcomeScreen()));
  }
}
