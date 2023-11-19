import 'package:flutter/material.dart';
class RecentStores extends StatefulWidget {
  const RecentStores({super.key});

  @override
  State<RecentStores> createState() => _RecentStoresState();
}

class _RecentStoresState extends State<RecentStores> {

  List<dynamic> recImg = [
    "assets/recents/1.jpg",
    "assets/recents/2.jpg",
    "assets/recents/3.jpg",
    "assets/recents/4.jpg",
    "assets/recents/5.jpg",
    "assets/recents/6.jpg",
    "assets/recents/7.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recImg.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Container(
                      width: 110,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(recImg[index])),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0xffDDF2FD),
                          )),
                    ),
                  );
                },
              ),
            ),
          ),

    );
  }
}
