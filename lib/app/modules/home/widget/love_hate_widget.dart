import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/home_controller.dart';

class LoveHateCardWidget extends StatelessWidget {
  const LoveHateCardWidget({
    super.key,
    required this.controller,
    required this.cardTitle,
    required this.index,
    required this.maxWidth,
  });

  final HomeController controller;
  final String cardTitle;
  final int index;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: min(maxWidth, 300.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: () {
          // Navigate to the politician profile page
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    cardTitle,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:
                          cardTitle == 'মহান নেতা'
                              ? Colors.red.withAlpha(20)
                              : Colors.grey.withAlpha(20),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      cardTitle == 'মহান নেতা'
                          ? Icons.favorite
                          : Icons.thumb_down,
                      color:
                          cardTitle == 'মহান নেতা' ? Colors.red : Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'politician_${controller.politician[index].name}',
                      child: Container(
                        height: 130,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withAlpha(1),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            controller.politician[index].image,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.politician[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            controller.politician[index].mainIdentity,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black.withAlpha(200),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 0),
                          Text(
                            controller.politician[index].position,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withAlpha(200),
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            controller.politician[index].description,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black.withAlpha(200),
                              height: 1.4,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MiniLoveHateCardWidget extends StatelessWidget {
  const MiniLoveHateCardWidget({
    super.key,
    required this.controller,
    required this.cardTitle,
    required this.index,
    required this.maxWidth,
  });

  final HomeController controller;
  final String cardTitle;
  final int index;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: min(maxWidth, 200.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: MaterialButton(
        onPressed: () {
          // Navigate to the politician profile page
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Hero(
                tag: 'politician_mini_${controller.politician[index].name}',
                child: Container(
                  height: 80,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      controller.politician[index].image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      controller.politician[index].name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      controller.politician[index].mainIdentity,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withAlpha(200),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
