import 'package:flutter/material.dart';
import 'package:task2/pages/detail_page.dart';
import 'package:task2/pages/popular_places_page.dart';
import 'package:task2/pages/profile_page.dart';
import 'package:task2/widgets/friend_list_widget.dart';
import 'package:task2/widgets/onboarding_page_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePage(),
                      ),
                    ),
                    child: FittedBox(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          // color: Color.fromARGB(255, 226, 226, 235),
                          color: const Color.fromARGB(255, 243, 243, 243),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFFFDFE6),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Image.asset("assets/images/avatar.png"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Leonardo"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 226, 226, 235),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 64),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    Text(
                      "Explore the ",
                      style: TextStyle(fontSize: 36),
                    ),
                    Text(
                      "Beautiful ",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TitleHightlightWidget(
                      titleTextHighlight: "world!",
                      fontSize: 36,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Destination",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PopularPlacesPage(),
                        ),
                      ),
                      child: Text(
                        "View All",
                        style: TextStyle(
                          color: Color(0xFF0D6EFD),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DestinationCardWidget(
                      title: "Niladri Reservoir",
                      location: "Tekergat, Sunamgnj",
                      stars: "4.7",
                      image: "assets/images/dashboard-0.png",
                    ),
                    DestinationCardWidget(
                      title: "Darma Reservoir",
                      location: "Darma, Kuningan",
                      stars: "4.9",
                      image: "assets/images/dashboard-1.png",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DestinationCardWidget extends StatelessWidget {
  const DestinationCardWidget({
    super.key,
    required this.title,
    required this.location,
    required this.stars,
    required this.image,
  });
  final String title;
  final String location;
  final String stars;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailPage(),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: (MediaQuery.sizeOf(context).width * 0.55) + 20,
          height: (MediaQuery.sizeOf(context).height * 0.3) + 20,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.55,
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: IconButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.withAlpha(128),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          stars,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.grey,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    FriendListWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
