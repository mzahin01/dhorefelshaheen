import 'package:dhorefelshaheen/app/routes/app_pages.dart';
import 'package:dhorefelshaheen/app/shared/widget/text_field/general_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: Image.asset('assets/icon/logo.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                // color: Colors.black,
                width: 200.w,
                child: TextFieldWidget.oneLine(
                  controller: controller.searchController,
                  height: 45,
                  padding: const EdgeInsets.all(0),
                  labelText: 'Search Politician',
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 70,
            height: 70,
            child: MaterialButton(
              onPressed: () {
                Get.toNamed(Routes.USER_PROFILE);
              },
              child: Icon(Icons.person, color: Colors.black, size: 40),
            ),
          ),
        ],
      ),
    );
  }
}
