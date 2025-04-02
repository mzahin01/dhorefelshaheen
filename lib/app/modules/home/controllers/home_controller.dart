import 'package:dhorefelshaheen/app/shared/const/image_asset.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Politician {
  String name;
  String image;
  String mainIdentity;
  String position;
  String description;

  Politician({
    required this.name,
    required this.image,
    required this.mainIdentity,
    required this.position,
    required this.description,
  });
}

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController searchController = TextEditingController();
  List<Politician> politician = [
    Politician(
      name: 'আসিফ মাহমুদ',
      image: ImageAsset.asif_mahmud,
      mainIdentity: 'এনসিপি',
      position: 'উপদেষ্টা',
      description:
          'বাংলাদেশের রাজনীতিতে একজন বিশিষ্ট রাজনৈতিক উপদেষ্টা এবং কৌশলবিদ।',
    ),
    Politician(
      name: 'মির্জা ফখরুল',
      image: ImageAsset.fakhrul,
      mainIdentity: 'বিএনপি',
      position: 'মহাসচিব',
      description:
          'বাংলাদেশ জাতীয়তাবাদী দলের (বিএনপি) মহাসচিব। বিরোধী রাজনীতিতে তার ভূমিকার জন্য পরিচিত।',
    ),
    Politician(
      name: 'ফজলুর রহমান',
      image: ImageAsset.fazlu,
      mainIdentity: 'বিএনপি',
      position: 'খালেদা জিয়ার উপদেষ্টা',
      description:
          'সাবেক প্রধানমন্ত্রী খালেদা জিয়ার জ্যেষ্ঠ রাজনৈতিক উপদেষ্টা এবং বিএনপির প্রভাবশালী ব্যক্তিত্ব।',
    ),
    Politician(
      name: 'শফিকুর রহমান',
      image: ImageAsset.jamat_sh,
      mainIdentity: 'জামায়াতে ইসলামী',
      position: 'আমীর',
      description: 'বাংলাদেশ জামায়াতে ইসলামী দলের বর্তমান আমীর (নেতা)।',
    ),
    Politician(
      name: 'ফাহাম',
      image: ImageAsset.faham,
      mainIdentity: 'বিএনপি সমর্থক',
      position: 'বুদ্ধিজীবী',
      description: 'বিএনপির সাথে সম্পৃক্ত রাজনৈতিক বুদ্ধিজীবী এবং বিশ্লেষক।',
    ),
    Politician(
      name: 'তারেক রহমান',
      image: ImageAsset.tarek,
      mainIdentity: 'বিএনপি',
      position: 'সিনিয়র ভাইস চেয়ারম্যান',
      description:
          'বিএনপির সিনিয়র ভাইস চেয়ারম্যান এবং সাবেক প্রধানমন্ত্রী খালেদা জিয়ার পুত্র।',
    ),
    Politician(
      name: 'মুহাম্মদ ইউনূস',
      image: ImageAsset.yunus,
      mainIdentity: 'প্রধান উপদেষ্টা',
      position: 'বাংলাদেশ সরকার',
      description:
          'নোবেল শান্তি পুরস্কার বিজয়ী এবং গ্রামীণ ব্যাংকের প্রতিষ্ঠাতা, ক্ষুদ্রঋণের পথিকৃৎ হিসেবে পরিচিত।',
    ),
  ];
}
