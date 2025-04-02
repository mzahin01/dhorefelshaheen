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
          controller: controller.scrollController,
          child: CrossfadeWrapperContainer(
            visible: !controller.isLoading.value,
            loaderHeight: Get.height,
            child: ResponsiveWidget<HomeController>(
              pc: buildDesktopView(),
              tab: buildMobileView(),
              mobile: buildMobileView(),
            ),
          ),
        );
      }),
    );
  }

  Widget buildMobileView() {
    return Obx(() {
      return Column(
        children: [
          CustomScrollView(
            controller: controller.scrollController,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: Sliver(controller: controller),
              ),
            ],
          ),
          const SizedBox(height: 20),
          controller.isLoading.value
              ? Container(height: 200, width: Get.width, color: Colors.black)
              : const SizedBox.shrink(),
          Container(height: 200, width: Get.width, color: Colors.black),
          Container(height: 200, width: Get.width, color: Colors.black),
        ],
      );
    });
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

class Sliver extends SliverPersistentHeaderDelegate {
  const Sliver({required this.controller});

  final HomeController controller;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.white,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child:
            controller.isCollapsed.value
                ? Row(
                  key: const ValueKey(1),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MiniLoveHateCardWidget(
                      controller: controller,
                      cardTitle: 'মহান নেতা',
                      index: 5,
                      maxWidth: 250,
                    ),
                    const SizedBox(width: 10),
                    MiniLoveHateCardWidget(
                      controller: controller,
                      cardTitle: 'জাউরার জাউরা',
                      index: 6,
                      maxWidth: 250,
                    ),
                  ],
                )
                : Column(
                  key: const ValueKey(2),
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
      ),
    );
  }

  @override
  double get maxExtent => controller.isCollapsed.value ? 100 : 420; // Adjust based on your content

  @override
  double get minExtent => controller.isCollapsed.value ? 100 : 420; // Adjust based on your content

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
