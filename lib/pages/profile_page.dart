import 'package:flutter/material.dart';
import 'package:task2/widgets/menu_action_tile.dart';
import 'package:task2/widgets/transparent_app_bar_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileContent(),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TransparentAppBarWidget(
          title: "Profile",
          textColor: Colors.black,
          onPressed: onPressed ?? () => Navigator.pop(context),
          trailing: IconButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 226, 226, 235),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.edit_outlined,
              color: Color(0xFF0D6EFD),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset("assets/images/avatar-hd.png"),
            ),
            Text(
              "Leonardo",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            Text(
              "leonardo@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HighlightTile(title: "Rewards Points", value: "360"),
            HighlightTile(title: "Travel Trips", value: "238"),
            HighlightTile(title: "Bucket List", value: "473"),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          child: Column(
            children: [
              MenuActionTile(
                text: "Profile",
                leading: Icon(Icons.person_outline),
              ),
              MenuActionTile(
                text: "Bookmarked",
                leading: Icon(Icons.bookmark_outline),
              ),
              MenuActionTile(
                text: "Previous Trips",
                leading: Icon(Icons.airplane_ticket_outlined),
              ),
              MenuActionTile(
                text: "Settings",
                leading: Icon(Icons.settings_outlined),
              ),
              MenuActionTile(
                text: "Version",
                leading: Icon(Icons.info_outline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class HighlightTile extends StatelessWidget {
  const HighlightTile({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 243, 243, 243),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                color: Color(0xFF0D6EFD),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
