import 'package:flutter/material.dart';

class MenuActionTile extends StatelessWidget {
  const MenuActionTile({
    super.key,
    required this.leading,
    required this.text,
    this.onPressed,
  });
  final Icon leading;
  final String text;
  final VoidCallback? onPressed;

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
          onTap: onPressed,
        ),
      ),
    );
  }
}
