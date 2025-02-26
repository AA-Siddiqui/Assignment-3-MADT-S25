import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 226, 226, 235),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.edit_outlined,
              color: Color(0xFF0D6EFD),
            ),
          ),
        ],
        leading: IconButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 226, 226, 235),
          ),
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_left_outlined),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
      ),
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

class MenuActionTile extends StatelessWidget {
  const MenuActionTile({
    super.key,
    required this.leading,
    required this.text,
  });
  final Icon leading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        color: const Color.fromARGB(255, 243, 243, 243),
        child: ListTile(
          leading: leading,
          trailing: Icon(Icons.arrow_right_outlined),
          title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
