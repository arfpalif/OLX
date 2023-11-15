import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final Widget? child;
  const SplashPage({super.key, this.child});

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => widget.child!),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        'assets/img/Logo_OLX.png',
        width: 100,
      )),
    );
  }
}
