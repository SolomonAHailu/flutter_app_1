// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/app_text_field.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_application_1/config/app_strings.dart';
import 'package:flutter_application_1/styles/app_colors.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: "Edit Profile"),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UserAvatar(size: 120),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AppTextField(hint: AppStrings.firstName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.lastName),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.phoneNumber),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.location),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: AppStrings.birthday),
            Radio(
              value: false,
              groupValue: true,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
