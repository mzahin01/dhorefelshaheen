import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';

class LoveHateCardWidget extends StatelessWidget {
  const LoveHateCardWidget({
    super.key,
    required this.controller,
    required this.cardTitle,
  });

  final HomeController controller;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: min(800, 300.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardTitle,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.favorite, color: Colors.red),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      controller.politician[0].image,
                      height: 100,
                      width: 100,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        RichText(
                          text: TextSpan(
                            text: controller.politician[0].name,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              letterSpacing: 0.5,
                            ),
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8),
                        RichText(
                          text: TextSpan(
                            text: controller.politician[0].mainIdentity,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                              height: 1.2,
                            ),
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            text: controller.politician[0].position,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 8),
                        RichText(
                          text: TextSpan(
                            text: controller.politician[0].description,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black87,
                              height: 1.3,
                              letterSpacing: 0.2,
                            ),
                          ),
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
