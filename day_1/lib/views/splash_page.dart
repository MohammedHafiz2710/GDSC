import 'package:day_1/views/widgets/fade_animation_body.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimaionBody(),
    );
  }
}
