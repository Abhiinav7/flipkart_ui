import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/bottom_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../widgets/carousal.dart';
import '../widgets/offers.dart';
import '../widgets/recentViewText.dart';
import '../widgets/recentsStore.dart';
import '../widgets/sliverRow.dart';

class MyFlipkart extends StatefulWidget {
  const MyFlipkart({super.key});

  @override
  State<MyFlipkart> createState() => _MyFlipkartState();
}
class _MyFlipkartState extends State<MyFlipkart> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          AppbarWidget(),
          CarousalWidget(),
          SliverRow(),
          OffersPage(),
          RecentText(),
          RecentStores(),
        ],
      ),
      bottomNavigationBar: BotNavBar(index: 0),
    );
  }
}
