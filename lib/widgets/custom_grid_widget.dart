import 'package:flutter/material.dart';

class CustomGridWidget extends StatelessWidget {
  final int columnCount;
  final List<Widget> children;
  CustomGridWidget({
    super.key,
    required this.columnCount,
    required this.children,
  });

  late final int rowCount = (children.length / columnCount).toInt() +
      (children.length % columnCount == 0 ? 0 : 1);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        rowCount,
        (index) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            index == rowCount - 1 && children.length % columnCount != 0
                ? children.length % columnCount
                : columnCount,
            (indexInner) => children[(index * columnCount) + indexInner],
          ),
        ),
      ),
    );
  }
}
