import 'package:flutter/material.dart';
import 'package:task2/pages/detail_page.dart';
import 'package:task2/pages/favourite_page.dart';
import 'package:task2/pages/home_page.dart';
import 'package:task2/pages/profile_page.dart';
import 'package:task2/pages/schedule_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final PageController pageController = PageController();
  void changePage(int newPageNo) {
    pageNo = newPageNo;
    pageController.animateToPage(
      pageNo,
      duration: Durations.medium1,
      curve: Curves.easeInOut,
    );
  }

  int pageNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => setState(() => changePage(0)),
              child: Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: pageNo == 0 ? Color(0xFF0D6EFD) : Colors.grey,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      color: pageNo == 0 ? Color(0xFF0D6EFD) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() => changePage(1)),
              child: Column(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: pageNo == 1 ? Color(0xFF0D6EFD) : Colors.grey,
                  ),
                  Text(
                    "Calendar",
                    style: TextStyle(
                      color: pageNo == 1 ? Color(0xFF0D6EFD) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0D6EFD),
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () => setState(() => changePage(2)),
              child: Column(
                children: [
                  Icon(
                    Icons.message_outlined,
                    color: pageNo == 2 ? Color(0xFF0D6EFD) : Colors.grey,
                  ),
                  Text(
                    "Messages",
                    style: TextStyle(
                      color: pageNo == 2 ? Color(0xFF0D6EFD) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => setState(() => changePage(3)),
              child: Column(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: pageNo == 3 ? Color(0xFF0D6EFD) : Colors.grey,
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: pageNo == 3 ? Color(0xFF0D6EFD) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          HomePage(),
          SchedulePage(),
          Column(
            children: [
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavouritePage(),
                  ),
                ),
                child: Text("Favourite Places"),
              )
            ],
          ),
          ProfileContent(onPressed: () {}),
        ],
      ),
    );
  }
}
