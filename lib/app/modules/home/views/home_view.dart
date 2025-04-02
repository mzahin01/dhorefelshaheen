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
              pc:
                  // buildMobileView(),
                  buildDesktopView(),
              tab: buildMobileView(),
              // buildDesktopView(),
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
          LoveHateCardWidget(
            controller: controller,
            cardTitle: 'মহান নেতা',
            index: 5,
            maxWidth: 600,
          ),
          const SizedBox(height: 20),
          LoveHateCardWidget(
            controller: controller,
            cardTitle: 'জাউরার জাউরা',
            index: 6,
            maxWidth: 600,
          ),
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
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoveHateCardWidget(
                controller: controller,
                cardTitle: 'মহান নেতা',
                index: 5,
                maxWidth: 400,
              ),
              const SizedBox(width: 20),
              LoveHateCardWidget(
                controller: controller,
                cardTitle: 'জাউরার জাউরা',
                index: 6,
                maxWidth: 400,
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
