import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sliding_text_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; // value between 0 to 1
  late Animation<Offset> slidingAnimation; // whatever value you want

  @override
  // single responcepility priciple (solid)
  void initState() {
    super.initState();
    initStateAnimation();
    navigateToHome(); 
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose(); // to avoid memory leek
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingTextAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initStateAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();

    // slidingAnimation.addStatusListener(
    //   (status) {
    //     setState(() {});
    //   },
    // );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.to(const HomeView(),
            transition: Transition.fade, duration: kDurationTransition);
      },
    );
  }
}
