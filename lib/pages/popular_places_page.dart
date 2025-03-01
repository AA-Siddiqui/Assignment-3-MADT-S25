import 'package:flutter/material.dart';
import 'package:task2/widgets/custom_grid_widget.dart';
import 'package:task2/widgets/info_card_widget.dart';
import 'package:task2/widgets/transparent_app_bar_widget.dart';

class PopularPlacesPage extends StatelessWidget {
  const PopularPlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransparentAppBarWidget(
            title: "Popular Places",
            textColor: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "All Popular Places",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Expanded(
                    child: CustomGridWidget(
                      columnCount: 2,
                      children: [
                        InfoCardWidget(
                          title: "Niladri Reservoir",
                          location: "Tekergat, Sunamgnj",
                          star: "4.7",
                          price: "459",
                          image: "assets/images/popular-0.png",
                        ),
                        InfoCardWidget(
                          title: "Casa Las Tirtugas",
                          location: "Av Damero, Mexico",
                          star: "4.8",
                          price: "894",
                          image: "assets/images/popular-1.png",
                        ),
                        InfoCardWidget(
                          title: "Aonang Villa Resort",
                          location: "Bastola, Islampur",
                          star: "4.3",
                          price: "761",
                          image: "assets/images/popular-2.png",
                        ),
                        InfoCardWidget(
                          title: "Rangauti Resort",
                          location: "Sylhet, Airport Road",
                          star: "4.5",
                          price: "857",
                          image: "assets/images/popular-3.png",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
