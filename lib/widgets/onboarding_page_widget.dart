import 'package:flutter/material.dart';
import 'package:task2/pages/login_page.dart';
import 'package:task2/widgets/get_size.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    direction: Axis.horizontal,
                    children: [
                      ...titleText.trim().replaceAll("\n", " ").split(" ").map(
                            (item) => Text(
                              "$item ",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      TitleHightlightWidget(
                          titleTextHighlight: titleTextHighlight),
                    ],
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

class TitleHightlightWidget extends StatefulWidget {
  const TitleHightlightWidget({
    super.key,
    required this.titleTextHighlight,
  });

  final String titleTextHighlight;

  @override
  State<TitleHightlightWidget> createState() => _TitleHightlightWidgetState();
}

class _TitleHightlightWidgetState extends State<TitleHightlightWidget> {
  Size size = Size.zero;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetSize(
          onChildSize: (size) => setState(() => this.size = size),
          child: Text(
            widget.titleTextHighlight,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 112, 41),
            ),
          ),
        ),
        SizedBox(
          width: size.width,
          child: Image.asset(
            "assets/images/arc.png",
          ),
        ),
        // Transform.scale(
        //   scaleX: scaleXArc,
        //   child:
        // )
      ],
    );
  }
}
