// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_home.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_favorite.svg"),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
            label: "Add Message",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
            label: "Messages",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_user.svg"),
            label: "User",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber[200],
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text("Favorite"),
    ),
    Center(
      child: Text("Post"),
    ),
    Center(
      child: Text("Messages"),
    ),
    Center(
      child: Text("User"),
    )
  ];
}
