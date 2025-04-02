import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../shared/widget/animated/crossfade_wrapper_container.dart';
import '../../../shared/widget/responseive_view/response_view.dart';
import '../controllers/home_controller.dart';
import '../widget/love_hate_widget.dart';
import '../widget/widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withAlpha(20),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBarWidget(controller: controller),
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: CrossfadeWrapperContainer(
            visible: !controller.isLoading.value,
            loaderHeight: Get.height,
            //Pass respective controller to the widget
            child: ResponsiveWidget<HomeController>(
              pc: buildMobileView(),
              // buildDesktopView(),
              tab: buildMobileView(),
              // buildTabletView(),
              mobile: buildMobileView(),
            ),
          ),
        );
      }),
    );
  }

  // Mobile layout
  Widget buildMobileView() {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          LoveHateCardWidget(controller: controller, cardTitle: 'Most Loved'),
          const SizedBox(height: 20),
          LoveHateCardWidget(controller: controller, cardTitle: 'Most Hated'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Tablet layout
  Widget buildTabletView() {
    return Center(child: const Text('Tablet View'));
  }

  // Desktop layout
  Widget buildDesktopView() {
    return Center(child: const Text('Desktop View'));
  }
}
