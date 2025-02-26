import 'package:flutter/material.dart';

class TransparentAppBarWidget extends StatelessWidget {
  const TransparentAppBarWidget({
    super.key,
    required this.title,
    this.trailing,
    this.onPressed,
  });

  final String title;
  final IconButton? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        IconButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.withAlpha(128),
          ),
          onPressed: onPressed ?? () {},
          icon: Icon(
            Icons.arrow_left,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        trailing ??
            IconButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.withAlpha(0),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.arrow_left,
                color: Colors.transparent,
              ),
            ),
      ],
    );
  }
}
