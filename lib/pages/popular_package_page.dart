import 'package:flutter/material.dart';
import 'package:task2/widgets/friend_list_widget.dart';
import 'package:task2/widgets/transparent_app_bar_widget.dart';

class PopularPackagePage extends StatelessWidget {
  const PopularPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransparentAppBarWidget(
            title: "Popular Package",
            textColor: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Popular Trip Package",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          {
                            "image": "assets/images/popular-package-0.png",
                            "title": "Santorini Island",
                            "price": "820",
                            "date": "16 July-28 July",
                            "star": "4.8",
                            "people": "24",
                          },
                          {
                            "image": "assets/images/popular-package-1.png",
                            "title": "Bukita Rayandro",
                            "price": "720",
                            "date": "20 Sep-29 Sep",
                            "star": "4.3",
                            "people": "24",
                          },
                          {
                            "image": "assets/images/popular-package-2.png",
                            "title": "Cluster Omega",
                            "price": "942",
                            "date": "14 Nov-22 Nov",
                            "star": "4.9",
                            "people": "26",
                          },
                          {
                            "image": "assets/images/popular-package-3.png",
                            "title": "Shajek Bandorban",
                            "price": "860",
                            "date": "12 Dec-18 Dec",
                            "star": "4.5",
                            "people": "27",
                          },
                        ]
                            .map(
                              (item) => PopularPackageWidget(
                                image: item["image"]!,
                                title: item["title"]!,
                                price: item["price"]!,
                                date: item["date"]!,
                                star: item["star"]!,
                                people: item["people"]!,
                              ),
                            )
                            .toList(),
                      ),
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

class PopularPackageWidget extends StatelessWidget {
  const PopularPackageWidget({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.date,
    required this.star,
    required this.people,
  });

  final String image;
  final String title;
  final String price;
  final String date;
  final String star;
  final String people;
  final double cardHeight = 96;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: cardHeight * 3 / 4,
              height: cardHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: cardHeight,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "\$$price",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: Icon(
                          Icons.calendar_month,
                          size: 14,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ...List.generate(
                        3,
                        (index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 14,
                        ),
                      ),
                      Text(
                        star,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FriendListWidget(
                        more: false,
                      ),
                      Text(
                        "$people Person Joined",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
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
