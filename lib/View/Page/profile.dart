import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Widget/menu.dart';
import 'Dashboard.dart';
import 'package:flutter_application_1/Controller/Imagepick.dart';
import 'package:flutter_application_1/Model/Theme.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

// ignore: must_be_immutable
class profile extends StatelessWidget {
  imagePickerController controller = Get.put(imagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Dashboard();
              }));
            },
            icon: const Icon(Icons.arrow_back),
            color: blueColor,
          ),
          title: Text(
            'Profile',
            style: blueTextStyle2.copyWith(fontSize: 20),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.notifications,
                color: blueColor,
              ),
            )
          ],
        ),
        body: Obx(() {
          return Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CircleAvatar(
                      radius: 100,
                      backgroundImage: controller.imagePath.isNotEmpty
                          ? FileImage(File(controller.imagePath.toString()))
                          : null),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        controller.getImagefromCamera();
                      },
                      child: Text(
                        'Ambil gambar',
                        style: blueTextStyle3.copyWith(fontSize: 12),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          controller.getImagefromGallery();
                        },
                        child: Text(
                          'Pilih gambar',
                          style: blueTextStyle3.copyWith(fontSize: 12),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Alif Raihan',
                  style: blueTextStyle2.copyWith(fontSize: 18),
                ),
                Text(
                  'alifraihanfirmanp@gmail.com',
                  style: blueTextStyle3.copyWith(fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Menu(),
                SizedBox(
                  height: 10,
                ),
                Menu(),
                SizedBox(
                  height: 10,
                ),
                Menu(),
                SizedBox(
                  height: 10,
                ),
                Menu(),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          );
        }));
  }
}
