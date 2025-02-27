import 'package:flutter/material.dart';
import 'package:task2/pages/detail_page.dart';
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
      appBar: [
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: MediaQuery.sizeOf(context).width * 0.4,
          leading: GestureDetector(
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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none_outlined),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 226, 226, 235),
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
        null,
        AppBar(),
        null,
      ][pageNo],
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
        controller: pageController,
        children: [
          HomePage(),
          SchedulePage(),
          Container(color: Colors.green),
          ProfileContent(onPressed: () {}),
        ],
      ),
    );
  }
}
