import 'package:flutter/material.dart';
class RecentText extends StatefulWidget {
  const RecentText({super.key});

  @override
  State<RecentText> createState() => _RecentTextState();
}

class _RecentTextState extends State<RecentText> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 12, left: 14),
          child: Row(
            children: [
              Text(
                "Recently Viewed Stores",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}
