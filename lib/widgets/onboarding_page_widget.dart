import 'package:flutter/material.dart';
import 'package:task2/pages/login_page.dart';

class OnboardingPageWidget extends StatelessWidget {
  const OnboardingPageWidget({
    super.key,
    required this.imagePath,
    required this.titleText,
    required this.titleTextHighlight,
    required this.descriptionText,
    required this.buttonText,
    required this.pageController,
    required this.offsetYArc,
    required this.scaleXArc,
    required this.pageNo,
    required this.carosolHead1,
    required this.carosolHead2,
    required this.carosolHead3,
  });
  final String imagePath;
  final String titleText;
  final String titleTextHighlight;
  final String descriptionText;
  final String buttonText;
  final PageController pageController;
  final int pageNo;
  final double offsetYArc;
  final double scaleXArc;
  final double carosolHead1;
  final double carosolHead2;
  final double carosolHead3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: MediaQuery.sizeOf(context).height * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: TextButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                  child: Text("Skip"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    text: titleText,
                    children: [
                      TextSpan(
                        text: titleTextHighlight,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 112, 41),
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(offsetYArc, 0),
                  child: Transform.scale(
                    scaleX: scaleXArc,
                    child: Image.asset(
                      "assets/images/arc.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Text(
              descriptionText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  width: MediaQuery.sizeOf(context).width * carosolHead1,
                  height: 10,
                  decoration: BoxDecoration(
                    color: (pageNo) == 0
                        ? Color(0xFF0D6EFD)
                        : Color(0xFF0D6EFD).withAlpha(128),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  width: MediaQuery.sizeOf(context).width * carosolHead2,
                  height: 10,
                  decoration: BoxDecoration(
                    color: (pageNo) == 1
                        ? Color(0xFF0D6EFD)
                        : Color(0xFF0D6EFD).withAlpha(128),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  width: MediaQuery.sizeOf(context).width * carosolHead3,
                  height: 10,
                  decoration: BoxDecoration(
                    color: (pageNo) == 2
                        ? Color(0xFF0D6EFD)
                        : Color(0xFF0D6EFD).withAlpha(128),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: TextButton(
              onPressed: () {
                if ((pageController.page?.toInt() ?? 0) == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                  return;
                }
                pageController.nextPage(
                  duration: Durations.medium1,
                  curve: Curves.easeInOut,
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fixedSize: Size(double.maxFinite, 20),
                backgroundColor: Color(0xFF0D6EFD),
                foregroundColor: Colors.white,
              ),
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}
