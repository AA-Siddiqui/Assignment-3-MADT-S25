import 'package:flutter/material.dart';
import 'package:task2/widgets/transparent_app_bar_widget.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TransparentAppBarWidget(
            title: "Schedule",
            textColor: Colors.black,
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 226, 226, 235),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 5),
                          blurRadius: 4,
                          blurStyle: BlurStyle.outer,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "22 October",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_left),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_right),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: ["S", "M", "T", "W", "T", "F", "S"]
                              .indexed
                              .map(
                                (item) => Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: item.$1 == 4
                                        ? Color(0xFF0D6EFD)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        item.$2,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: item.$1 == 4
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: Text(
                                          (item.$1 + 18).toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: item.$1 == 4
                                                  ? Colors.white
                                                  : Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Schedule",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(
                            color: Color(0xFF0D6EFD),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // TODO: Change the images
                        ScheduleCardWidget(
                          title: "Niladri Reservoir",
                          date: "26 January 2022",
                          location: "Tekergat, Sunamgnj",
                          image: "assets/images/onboarding-0.png",
                        ),
                        ScheduleCardWidget(
                          title: "High Rech Park",
                          date: "26 January 2022",
                          location: "Zeero Point, Sylhet",
                          image: "assets/images/onboarding-1.png",
                        ),
                        ScheduleCardWidget(
                          title: "Darma Reservoir",
                          date: "26 January 2022",
                          location: "Darma, Kuningan",
                          image: "assets/images/onboarding-2.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScheduleCardWidget extends StatelessWidget {
  const ScheduleCardWidget({
    super.key,
    required this.title,
    required this.location,
    required this.date,
    required this.image,
  });

  final String title;
  final String location;
  final String date;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(64),
            offset: Offset(0, 5),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                image,
                width: 64,
                height: 64,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.grey,
                        size: 14,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Colors.grey,
                        size: 14,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
