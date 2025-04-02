import 'package:dhorefelshaheen/app/shared/const/image_asset.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Politician {
  String name;
  String image;
  String mainIdentity;
  String position;

  Politician({
    required this.name,
    required this.image,
    required this.mainIdentity,
    required this.position,
  });
}

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController searchController = TextEditingController();
  List<Politician> politician = [
    Politician(
      name: 'Asif Mahmud',
      image: ImageAsset.asif_mahmud,
      mainIdentity: 'NCP',
      position: 'Leader',
    ),
    Politician(
      name: 'Mirza Fakhrul',
      image: ImageAsset.fakhrul,
      mainIdentity: 'BNP',
      position: 'Secretary General',
    ),
    Politician(
      name: 'Fazlur Rahman',
      image: ImageAsset.fazlu,
      mainIdentity: 'BNP',
      position: 'Adviser to Khaleda Zia',
    ),
    Politician(
      name: 'Shafiqur Rahman',
      image: ImageAsset.jamat_sh,
      mainIdentity: 'Jamaat E Islami',
      position: 'Ameer',
    ),

    Politician(
      name: 'Faham',
      image: ImageAsset.faham,
      mainIdentity: 'BNP affiliate',
      position: 'Intelactual',
    ),
    Politician(
      name: 'Tarek Rahman',
      image: ImageAsset.tarek,
      mainIdentity: 'BNP',
      position: 'Senior Vice Chairman',
    ),
    Politician(
      name: 'Muhammad Yunus',
      image: ImageAsset.yunus,
      mainIdentity: 'Cheif Adviser',
      position: 'Nobel Laureate',
    ),
  ];
}
