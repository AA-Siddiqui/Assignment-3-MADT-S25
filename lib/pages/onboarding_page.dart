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
            carosolHeadSize: [
              0.1,
              0.05,
              0.05,
            ],
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
            carosolHeadSize: [
              0.05,
              0.1,
              0.025,
            ],
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
            carosolHeadSize: [
              0.025,
              0.05,
              0.1,
            ],
          ),
        ],
      ),
    );
  }
}
