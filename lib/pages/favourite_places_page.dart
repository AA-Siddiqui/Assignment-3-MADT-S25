import 'package:flutter/material.dart';
import 'package:task2/widgets/custom_grid_widget.dart';
import 'package:task2/widgets/info_card_widget.dart';
import 'package:task2/widgets/transparent_app_bar_widget.dart';

class FavouritePlacesPage extends StatelessWidget {
  const FavouritePlacesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransparentAppBarWidget(
            title: "Favourite Places",
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
                          image: "assets/images/fav-place-0.png",
                        ),
                        InfoCardWidget(
                          title: "Casa Las Tirtugas",
                          location: "Av Damero, Mexico",
                          image: "assets/images/fav-place-1.png",
                        ),
                        InfoCardWidget(
                          title: "Aonang Villa Resort",
                          location: "Bastola, Islampur",
                          image: "assets/images/fav-place-2.png",
                        ),
                        InfoCardWidget(
                          title: "Rangauti Resort",
                          location: "Sylhet, Airport Road",
                          image: "assets/images/fav-place-3.png",
                        ),
                        InfoCardWidget(
                          title: "Kachura Resort",
                          location: "Vellima, Island",
                          image: "assets/images/fav-place-4.png",
                        ),
                        InfoCardWidget(
                          title: "Shakardu Resort",
                          location: "Shakartu, Pakistan",
                          image: "assets/images/fav-place-5.png",
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
