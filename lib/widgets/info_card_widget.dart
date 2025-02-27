import 'package:flutter/material.dart';

class InfoCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String? star;
  final String? price;

  const InfoCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    this.star,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 12,
            spreadRadius: -10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.38,
            height: MediaQuery.sizeOf(context).width * 0.38,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset(
                        image,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.white,
                      backgroundColor: Colors.black.withAlpha(128),
                      fixedSize: Size(18, 18),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 4),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          if (price != null && star != null) ...[
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  ...List.generate(
                    3,
                    (index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 14,
                    ),
                  ),
                  Text(star!),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                style: TextStyle(fontWeight: FontWeight.w600),
                children: [
                  TextSpan(
                    text: "\$$price/",
                    style: TextStyle(
                      color: Color(0xFF0D6EFD),
                    ),
                  ),
                  TextSpan(
                    text: "Person",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}
