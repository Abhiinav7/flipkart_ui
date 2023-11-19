import 'package:flutter/material.dart';
class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 160,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Color(0xffDDF2FD))),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, left: 6),
              child: Container(
                height: 140,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border:
                    Border.all(width: 3, color: Color(0xffDDF2FD))),
                child: Column(
                  children: [
                    Image.asset("assets/products/flight.jpg",height: 92,fit: BoxFit.fill,),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Indigo Flights",
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      "Starting 1,299*",
                      style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                height: 140,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border:
                    Border.all(width: 3, color: Color(0xffDDF2FD))),
                child: Column(
                  children: [
                    Image.asset("assets/products/watch.jpg",height: 92,fit: BoxFit.fill,),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "1.85 HD | Calling",
                      style: TextStyle(
                          fontSize: 14
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      "Just 1,199*",
                      style: TextStyle(
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 140,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border:
                  Border.all(width: 3, color: Color(0xffDDF2FD))),
              child: Column(
                children: [
                  Image.asset("assets/products/nivea.jpg",height: 92,fit: BoxFit.fill,),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Daily Care Trio",
                    style: TextStyle(
                        fontSize: 14
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    "Upto 50% Off",
                    style: TextStyle(
                        fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
