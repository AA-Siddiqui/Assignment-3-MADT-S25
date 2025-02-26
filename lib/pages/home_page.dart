import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Explore the\n",
                      children: [
                        TextSpan(
                          text: "Beautiful ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text: "world!",
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 112, 41),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    style: TextStyle(
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/images/arc.png"),
              ),
            ],
          ),
          Padding(
            // padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                  onPressed: () {},
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
    return Padding(
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
          ],
        ),
      ),
    );
  }
}
