import 'package:flutter/material.dart';
import 'package:task2/widgets/transparent_app_bar_widget.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/view-0.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TransparentAppBarWidget(
                title: "View",
                onPressed: () => Navigator.pop(context),
              ),
              Expanded(
                child: Stack(children: [
                  Positioned(
                    left: 15,
                    bottom: 15,
                    child: FloatingActionWidget(
                      image: "assets/images/view-icon-0.png",
                      title: "Lemon Garden",
                      distance: "2.09 mi",
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 15,
                    child: FloatingActionWidget(
                      image: "assets/images/view-icon-1.png",
                      title: "La-Hotel",
                      distance: "2.09 mi",
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(96),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Niladri Reservoir",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                "4.7",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0, top: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Tekergat, Sunamgnj",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 50,
                              height: 20,
                              child: Stack(
                                children: [
                                  Positioned(
                                    width: 20,
                                    height: 20,
                                    right: 30,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  Positioned(
                                    width: 20,
                                    height: 20,
                                    right: 20,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.yellow,
                                    ),
                                  ),
                                  Positioned(
                                    width: 20,
                                    height: 20,
                                    right: 10,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                  Positioned(
                                    width: 20,
                                    height: 20,
                                    right: 0,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.blue.shade50,
                                      child: Text(
                                        "+50",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer_outlined,
                                  color: Colors.white,
                                ),
                                Text(
                                  "45 minutes",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF0D6EFD),
                          fixedSize: Size(double.maxFinite, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "See On The Map",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    super.key,
    required this.image,
    required this.title,
    required this.distance,
  });
  final String image;
  final String title;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 209,
        height: 149,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                  width: 209,
                  height: 78,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 209,
                            height: 78,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ))),
                    Positioned(
                        top: 8,
                        left: 8,
                        child: SizedBox(
                            width: 186,
                            height: 62,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 63,
                                      height: 62,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(image),
                                            fit: BoxFit.fitWidth),
                                      ))),
                              Positioned(
                                  top: 10,
                                  left: 79,
                                  child: SizedBox(
                                      width: 107,
                                      height: 42,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Text(
                                              title,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'SF UI Display',
                                                  fontSize: 16,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.25),
                                            )),
                                        Positioned(
                                            top: 26,
                                            left: 0,
                                            child: Text(
                                              distance,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'SF UI Display',
                                                  fontSize: 14,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.1428571428571428),
                                            )),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 77,
              left: 19,
              child: SizedBox(
                  width: 24,
                  height: 72,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 11,
                        child: Container(
                            width: 2,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ))),
                    Positioned(
                        top: 48,
                        left: 0,
                        child: SizedBox(
                            width: 24,
                            height: 24,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(61, 61, 61, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(24, 24)),
                                      ))),
                              Positioned(
                                  top: 6,
                                  left: 6,
                                  child: Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(13, 110, 253, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(12, 12)),
                                      ))),
                            ]))),
                  ]))),
        ]));
  }
}
