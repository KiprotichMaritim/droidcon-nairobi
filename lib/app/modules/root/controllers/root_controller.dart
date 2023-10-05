import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'package:droidcon_nairobi/app/routes/app_routes.dart';
import 'package:droidcon_nairobi/app/modules/home/views/home_view.dart';

class RootController extends GetxController {
  final currentIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
  }

  List<Widget> pages = [
    HomeView(),
    //Speakers
    //Favorites
  ];

  Future<void> changePageInRoot(int _index) async {
    currentIndex.value = _index;
    var logger = Logger();
    logger.d('Update index is : $currentIndex');
  }

  Future<void> changePageOutRoot(int _index) async {
    currentIndex.value = _index;
    await Get.offNamedUntil(Routes.root, (Route route) {
      if (route.settings.name == Routes.root) {
        return true;
      }
      return false;
    }, arguments: _index);
  }

  Future<void> changePage(int _index) async {
    if (Get.currentRoute == Routes.root) {
      await changePageInRoot(_index);
    } else {
      await changePageOutRoot(_index);
    }
  }

  Widget get currentPage => pages[currentIndex.value];
}
