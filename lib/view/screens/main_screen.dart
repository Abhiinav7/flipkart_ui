import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/bottom_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/carousal.dart';

class MyFlipkart extends StatefulWidget {
  const MyFlipkart({super.key});

  @override
  State<MyFlipkart> createState() => _MyFlipkartState();
}

class _MyFlipkartState extends State<MyFlipkart> {
  List scroll = [
    "assets/icons/plus.jpg",
    "assets/icons/spoyl.jpg",
    "assets/icons/ngen.jpg",
    "assets/icons/lvshop.jpg",
    "assets/icons/emi.jpg",
    "assets/icons/cam.jpg",
    "assets/icons/frdrop.jpg",
    "assets/icons/pks.jpg",
  ];

  List iconName = [
    "Plus",
    "Spoyl",
    "Nextgenbrands",
    "Liveshop+",
    "Emi",
    "Camera",
    "Firedrops",
    "Phonecash",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[100],
      // appBar:AppbarWidget(),
      body: CustomScrollView(
        slivers: [
          AppbarWidget(),
          CarousalWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    // Replace this with your actual data
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(scroll[index]),
                          ),
                          Text(iconName[index])
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
              ),
            ),
          )
        ],
      ),

      bottomNavigationBar: BotNavBar(index: 0),
    );
  }
}
