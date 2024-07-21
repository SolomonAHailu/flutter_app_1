// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/temp/user1.jpg",
            height: 90,
            width: 90,
          ),
          Text(
            "Solomon A H",
            style: AppText.header2,
          ),
          Text(
            "Ethiopia",
            style: AppText.subtitle3,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "723",
                    style: AppText.header2,
                  ),
                  Text("Followers")
                ],
              ),
              Column(
                children: [
                  Text(
                    "111",
                    style: AppText.header2,
                  ),
                  Text("Following")
                ],
              ),
              Column(
                children: [
                  Text(
                    "74",
                    style: AppText.header2,
                  ),
                  Text("Posts")
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
