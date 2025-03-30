import 'package:get/get.dart';

import '../controllers/politician_profile_controller.dart';

class PoliticianProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PoliticianProfileController>(
      () => PoliticianProfileController(),
    );
  }
}
