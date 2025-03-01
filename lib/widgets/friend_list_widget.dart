import 'package:flutter/material.dart';

class FriendListWidget extends StatelessWidget {
  final bool more;
  const FriendListWidget({
    super.key,
    this.more = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              backgroundImage: AssetImage("assets/images/friend-0.png"),
            ),
          ),
          Positioned(
            width: 20,
            height: 20,
            right: 20,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.yellow,
              backgroundImage: AssetImage("assets/images/friend-1.png"),
            ),
          ),
          Positioned(
            width: 20,
            height: 20,
            right: 10,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.green,
              backgroundImage: AssetImage("assets/images/friend-2.png"),
            ),
          ),
          if (more)
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
    );
  }
}
