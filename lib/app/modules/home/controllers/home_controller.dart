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
      name: 'Asif Mahmud',
      image: ImageAsset.asif_mahmud,
      mainIdentity: 'NCP',
      position: 'Adviser',
      description:
          'A prominent political adviser and strategist in Bangladesh politics.',
    ),
    Politician(
      name: 'Mirza Fakhrul',
      image: ImageAsset.fakhrul,
      mainIdentity: 'BNP',
      position: 'Secretary General',
      description:
          'Secretary General of the Bangladesh Nationalist Party (BNP). Known for his role in opposition politics.',
    ),
    Politician(
      name: 'Fazlur Rahman',
      image: ImageAsset.fazlu,
      mainIdentity: 'BNP',
      position: 'Adviser to Khaleda Zia',
      description:
          'Senior political adviser to former Prime Minister Khaleda Zia and influential figure in BNP.',
    ),
    Politician(
      name: 'Shafiqur Rahman',
      image: ImageAsset.jamat_sh,
      mainIdentity: 'Jamaat E Islami',
      position: 'Ameer',
      description:
          'Current Ameer (leader) of Bangladesh Jamaat-e-Islami party.',
    ),
    Politician(
      name: 'Faham',
      image: ImageAsset.faham,
      mainIdentity: 'BNP affiliate',
      position: 'Intelactual',
      description: 'Political intellectual and analyst associated with BNP.',
    ),
    Politician(
      name: 'Tarek Rahman',
      image: ImageAsset.tarek,
      mainIdentity: 'BNP',
      position: 'Senior Vice Chairman',
      description:
          'Senior Vice Chairman of BNP and son of former Prime Minister Khaleda Zia.',
    ),
    Politician(
      name: 'Muhammad Yunus',
      image: ImageAsset.yunus,
      mainIdentity: 'Cheif Adviser',
      position: 'Government of Bangladesh',
      description:
          'Nobel Peace Prize laureate and founder of Grameen Bank, known for pioneering microfinance.',
    ),
  ];
}
