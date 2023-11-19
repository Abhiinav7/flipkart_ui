import 'package:flutter/material.dart';
class BotNavBar extends StatefulWidget {
int index;
   BotNavBar({super.key,required this.index});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(

      selectedFontSize: 10,
      unselectedFontSize: 10,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      iconSize: 30,

      selectedItemColor: Colors.blue.shade500,
      unselectedItemColor: Colors.grey.shade800,
      currentIndex: widget.index,
      onTap: (int indexNew){
        setState(() {
          widget.index=indexNew;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: "Home",
            icon: Icon(Icons.manage_search_sharp),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Categories",
            icon: Icon(Icons.home),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Notifications",
            icon: Icon(Icons.notifications),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Acounts",
            icon: Icon(Icons.account_circle_sharp),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Cart",
            icon: Icon(Icons.shopping_cart),
          backgroundColor: Colors.white
        ),

      ],

    );
  }
}
