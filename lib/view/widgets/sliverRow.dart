import 'package:flutter/material.dart';
class SliverRow extends StatefulWidget {
  const SliverRow({super.key});

  @override
  State<SliverRow> createState() => _SliverRowState();
}

class _SliverRowState extends State<SliverRow> {
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
    "Nextgen brands",
    "Liveshop+",
    "Emi",
    "Camera",
    "Firedrops",
    "Phonecash",
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: SizedBox(
          height: 105,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage(scroll[index]),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      iconName[index],
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),)
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
