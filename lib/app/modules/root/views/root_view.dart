import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/modules/root/controllers/root_controller.dart';
import 'package:droidcon_nairobi/app/modules/widgets/custom_bottom_nav_bar.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.currentPage,
        bottomNavigationBar: CustomBottomNavigationBar(
            onChange: (index) {
              controller.changePage(index);
            },
            backgroundColor: context.theme.scaffoldBackgroundColor,
            itemColor: context.theme.colorScheme.secondary,
            currentIndex: controller.currentIndex.value,
            children: [
              CustomBottomNavigationItem(
                  icon: Icons.play_arrow_rounded,
                  label: "Sessions".tr,
                  color: Colors.black),
              CustomBottomNavigationItem(
                  icon: Icons.person_3_outlined,
                  label: "Speakers".tr,
                  color: Colors.black),
              CustomBottomNavigationItem(
                  icon: Icons.favorite,
                  label: "Favorites".tr,
                  color: Colors.black)
            ]),
      );
    });
  }
}
