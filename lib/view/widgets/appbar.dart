import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(110.0);
}

class _AppbarWidgetState extends State<AppbarWidget> {
  bool isSwitch=false;

  @override
    Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      title: Container(
        height: 45,
        width: 110,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/logo/flipkartplus.jpg"),
                fit: BoxFit.fill)),
      ),
      bottom: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Column(children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Brand Mall",
                style: TextStyle(
                    fontSize: 10, color: Colors.black.withOpacity(0.63)),
              ),
              Container(
                height: 25,
                width: 15,

                child: Switch(
                  activeColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  activeTrackColor: Colors.black.withOpacity(0.8),

                  value: isSwitch,
                  onChanged: (bool value) {
                    setState(() {
                      isSwitch = value;
                    });
                  },
                ),
              )
            ]),
            SizedBox(
              width: 16,
            ),
            Container(
              height: 35,
              width: 295,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.15),
                  border: Border(
                    bottom: BorderSide(width: 1,color: Colors.grey),
                    right: BorderSide(width: 1,color: Colors.grey),
                    left: BorderSide(width: 1,color: Colors.grey),
                    top: BorderSide(width: 1,color: Colors.grey),
                  ),
                  borderRadius: BorderRadius.circular(3)
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search,size: 21,color: Colors.grey,),
                  SizedBox(width: 7,),
                  Container(
                    height: 28,
                    width: 200,
                    color: Colors.grey.withOpacity(0.001),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14
                          ),
                          hintText: "Iphone 15",
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  Icon(Icons.mic_none,size: 21,color: Colors.grey,),
                  SizedBox(width: 6,),
                  Icon(Icons.photo_camera_outlined,size: 21,color: Colors.grey,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
