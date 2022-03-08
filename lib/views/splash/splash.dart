import 'dart:async';

import 'package:flutter/material.dart';
import 'package:theme_app/theme/theme.dart';

import '../get_started/getStarted.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late AnimationController _scale2Controller;
  late AnimationController _widthController;
  late AnimationController _positionController;

  late Animation<double> _scaleAnimation;
  late Animation<double> _scale2Animation;
  late Animation<double> _widthAnimation;
  late Animation<double> _positionAnimation;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 1200),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              pageBuilder: (context, animation, secondaryAnimation) {
                return const GetStarted();
              }),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LaundryColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder<double>(
                duration: const Duration(seconds: 1),
                tween: Tween(begin: 1.0, end: 0.0),
                curve: Curves.bounceOut,
                child: Image.asset(
                  'assets/logo.png',
                  scale: 2,
                ),
                builder: (context, value, child) {
                  return Transform.translate(
                      offset: Offset(0, -200 * value), child: child!);
                }),
          ),
          const SizedBox(
            height: 30,
          ),
          TweenAnimationBuilder<double>(
              duration: const Duration(seconds: 2),
              tween: Tween(begin: -1.0, end: 0.0),
              curve: Curves.fastLinearToSlowEaseIn,
              child: Text(
                "Enjoy Cleaning",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: LaundryColors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              builder: (context, value, child) {
                return Transform.translate(
                    offset: Offset(200 * value, 0), child: child!);
              }),
        ],
      ),
    );
  }
}
