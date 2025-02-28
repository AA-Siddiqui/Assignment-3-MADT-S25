import 'package:flutter/material.dart';
import 'package:task2/pages/onboarding_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashWidget(home: OnboardingPage()),
    );
  }
}

class SplashWidget extends StatefulWidget {
  final Widget home;
  const SplashWidget({super.key, required this.home});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!mounted) return;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => widget.home,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF0D6EFD),
        child: Center(
          child: Image.asset("assets/images/splash.png"),
        ),
      ),
    );
  }
}
