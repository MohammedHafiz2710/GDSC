import 'package:day_1/views/home_page.dart';
import 'package:day_1/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FadeAnimaionBody extends StatefulWidget {
  const FadeAnimaionBody({
    super.key,
  });

  @override
  State<FadeAnimaionBody> createState() => _FadeAnimaionBodyState();
}

class _FadeAnimaionBodyState extends State<FadeAnimaionBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    super.initState();
    initFadeAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeAnimation,
      builder: (context, _) {
        return FadeTransition(
          opacity: fadeAnimation,
          child: SplashViewBody(),
        );
      },
    );
  }

  void initFadeAnimation() {
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 2500));
    fadeAnimation = Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(Duration(milliseconds: 2700), () {
      Get.to(() => HomePage(), transition: Transition.fadeIn, duration: Duration(milliseconds: 500));
    });
  }
}
