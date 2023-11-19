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
type: BottomNavigationBarType.fixed,
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
            icon:  Image.asset("assets/navbar/home.jpg",height: 25,),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Categories",
            icon: Image.asset("assets/navbar/cat.jpg",height: 25,),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Notifications",
            icon: Image.asset("assets/navbar/not.jpg",height: 25,),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Acounts",
            icon:Image.asset("assets/navbar/acc.jpg",height: 25,),
          backgroundColor: Colors.white
        ), BottomNavigationBarItem(
          label: "Cart",
            icon:Image.asset("assets/navbar/cart.jpg",height: 25,),
          backgroundColor: Colors.white
        ),

      ],

    );
  }
}
