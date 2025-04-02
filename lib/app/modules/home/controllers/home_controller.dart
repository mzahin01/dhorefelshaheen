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

class Quotes {
  String author;
  String image;
  String date;
  String quote;
  double likeCount;
  double disLikeCount;

  Quotes({
    required this.quote,
    required this.author,
    required this.date,
    required this.image,
    required this.likeCount,
    required this.disLikeCount,
  });
}

class HomeController extends GetxController {
  final scrollController = ScrollController();
  final isCollapsed = false.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (scrollController.offset > 100 && !isCollapsed.value) {
      isCollapsed.value = true; // Change to row
    } else if (scrollController.offset <= 100 && isCollapsed.value) {
      isCollapsed.value = false; // Change to column
    }
  }

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
  List<Quotes> quotes = [
    Quotes(
      quote: 'দেশের মানুষের অধিকার প্রতিষ্ঠার জন্য আমরা লড়াই করে যাব',
      author: 'মির্জা ফখরুল',
      date: '১০ জানুয়ারি ২০২৪',
      image: ImageAsset.fakhrul,
      likeCount: 1200,
      disLikeCount: 300,
    ),
    Quotes(
      quote: 'গণতন্ত্র পুনরুদ্ধার না হওয়া পর্যন্ত আন্দোলন অব্যাহত থাকবে',
      author: 'তারেক রহমান',
      date: '৫ জানুয়ারি ২০২৪',
      image: ImageAsset.tarek,
      likeCount: 2500,
      disLikeCount: 500,
    ),
    Quotes(
      quote: 'দারিদ্র্য বিমোচনে আমাদের সবাইকে একসাথে কাজ করতে হবে',
      author: 'মুহাম্মদ ইউনূস',
      date: '১ জানুয়ারি ২০২৪',
      image: ImageAsset.yunus,
      likeCount: 3000,
      disLikeCount: 200,
    ),
    Quotes(
      quote: 'দেশের আইনি প্রক্রিয়া সঠিকভাবে চলছে না',
      author: 'আসিফ মাহমুদ',
      date: '১২ জানুয়ারি ২০২৪',
      image: ImageAsset.asif_mahmud,
      likeCount: 1800,
      disLikeCount: 400,
    ),
    Quotes(
      quote: 'জনগণের অধিকার রক্ষায় আমরা সর্বদা সোচ্চার থাকব',
      author: 'ফজলুর রহমান',
      date: '৮ জানুয়ারি ২০২৪',
      image: ImageAsset.fazlu,
      likeCount: 2200,
      disLikeCount: 600,
    ),
    Quotes(
      quote: 'সামাজিক ন্যায়বিচার প্রতিষ্ঠা করতে হবে',
      author: 'শফিকুর রহমান',
      date: '৭ জানুয়ারি ২০২৪',
      image: ImageAsset.jamat_sh,
      likeCount: 1500,
      disLikeCount: 450,
    ),
    Quotes(
      quote: 'রাজনৈতিক সংস্কার আজ সময়ের দাবি',
      author: 'ফাহাম',
      date: '৩ জানুয়ারি ২০২৪',
      image: ImageAsset.faham,
      likeCount: 1700,
      disLikeCount: 350,
    ),
    Quotes(
      quote: 'সুষ্ঠু নির্বাচন জনগণের মৌলিক অধিকার',
      author: 'মির্জা ফখরুল',
      date: '২ জানুয়ারি ২০২৪',
      image: ImageAsset.fakhrul,
      likeCount: 2800,
      disLikeCount: 700,
    ),
  ];
}
