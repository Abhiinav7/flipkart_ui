import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CarousalWidget extends StatefulWidget {
  const CarousalWidget({super.key});

  @override
  State<CarousalWidget> createState() => _CarousalWidgetState();
}

class _CarousalWidgetState extends State<CarousalWidget> {
  List <dynamic>slideImages = [
    {"id": "1", "path": "assets/slide_img/1.jpg"},
    {"id": "2", "path": "assets/slide_img/2.jpg"},
    {"id": "3", "path": "assets/slide_img/3.jpg"},
    {"id": "4", "path": "assets/slide_img/4.jpg"},
    {"id": "5", "path": "assets/slide_img/5.jpg"},
    {"id": "6", "path": "assets/slide_img/6.jpg"},
    {"id": "7", "path": "assets/slide_img/7.jpg"},
    {"id": "8", "path": "assets/slide_img/8.jpg"},
    {"id": "9", "path": "assets/slide_img/9.jpg"}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          InkWell(
            onTap: () {},
            child: CarouselSlider(
                items: slideImages
                    .map((item) => Image.asset(
                  item["path"],
                  fit: BoxFit.fill,
                  width: double.infinity,
                ))
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2.20,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    })),
          ),
          Positioned(
              bottom: 0,
              top: 160,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...slideImages.asMap().entries.map((entry) {
                   // print(entry.key);
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex == entry.key ? 17 : 7,
                        height: 7,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key ? Colors.white : Colors.grey,
                        ),
                      ),
                    );
                  }).toList(),
                ],
              ))
        ],
      ),
    );
  }
}
