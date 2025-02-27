import 'package:flutter/material.dart';
import 'package:task2/widgets/onboarding_page_widget.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({
    super.key,
  });
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          OnboardingPageWidget(
            imagePath: "assets/images/onboarding-0.png",
            titleText: "Life is short and the\nworld is ",
            titleTextHighlight: "wide",
            descriptionText:
                "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
            buttonText: "Get Started",
            pageController: pageController,
            pageNo: 0,
            offsetYArc: -14,
            scaleXArc: 0.7,
            carosolHead1: 0.1,
            carosolHead2: 0.05,
            carosolHead3: 0.05,
          ),
          OnboardingPageWidget(
            imagePath: "assets/images/onboarding-1.png",
            titleText: "It's a big world out\nthere go ",
            titleTextHighlight: "explore",
            descriptionText:
                "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
            buttonText: "Next",
            pageController: pageController,
            pageNo: 1,
            offsetYArc: -8,
            scaleXArc: 0.75,
            carosolHead1: 0.05,
            carosolHead2: 0.1,
            carosolHead3: 0.025,
          ),
          OnboardingPageWidget(
            imagePath: "assets/images/onboarding-2.png",
            titleText: "People don't take trips,\ntrips take ",
            titleTextHighlight: "people",
            descriptionText:
                "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
            buttonText: "Next",
            pageController: pageController,
            pageNo: 2,
            offsetYArc: -26,
            scaleXArc: 0.8,
            carosolHead1: 0.025,
            carosolHead2: 0.05,
            carosolHead3: 0.1,
          ),
        ],
      ),
    );
  }
}
