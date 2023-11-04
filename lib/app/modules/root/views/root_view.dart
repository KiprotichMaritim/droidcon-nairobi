import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:droidcon_nairobi/app/modules/root/controllers/root_controller.dart';
import 'package:droidcon_nairobi/app/modules/widgets/custom_bottom_nav_bar.dart';

class RootView extends GetView<RootController> {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.5,
          title: SvgPicture.asset(
            'assets/img/droidcon_logo.svg',
            width: min(MediaQuery.of(context).size.width * 0.4, 150),
          ),
          centerTitle: true,
        ),
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
                  icon: Icons.play_circle_outline,
                  label: "Sessions".tr,
                  color: Colors.black),
              CustomBottomNavigationItem(
                  icon: Icons.person_outline,
                  label: "Speakers".tr,
                  color: Colors.black),
              CustomBottomNavigationItem(
                  icon: Icons.favorite_outline_rounded,
                  label: "Favorites".tr,
                  color: Colors.black)
            ]),
      );
    });
  }
}
