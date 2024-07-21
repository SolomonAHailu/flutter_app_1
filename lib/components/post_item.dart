// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/app_text.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/temp/user1.jpg",
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset("assets/temp/post1.jpg"),
          Text(
            "this is a random post text bla bla random post text bla bla random post text bla bla random post text bla bla ",
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
