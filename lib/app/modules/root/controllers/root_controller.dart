import 'package:droidcon_nairobi/app/modules/speakers/controllers/speakers_controller.dart';
import 'package:droidcon_nairobi/app/modules/speakers/views/speakers_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/routes/app_routes.dart';
import 'package:droidcon_nairobi/app/modules/home/views/home_view.dart';
import 'package:droidcon_nairobi/app/modules/home/controllers/home_controller.dart';

class RootController extends GetxController {
  final currentIndex = 0.obs;

  @override
  void onInit() async {
    super.onInit();
    Get.put(HomeController());
  }

  List<Widget> pages = [
    HomeView(),
    SpeakersView()
    //Favorites
  ];

  Future<void> changePageInRoot(int _index) async {
    currentIndex.value = _index;
    await refreshPage(_index);
  }

  Future<void> refreshPage(int _index) async {
    switch (_index) {
      case 0:
        {
          await Get.put(HomeController()).refreshHome();
          break;
        }
      case 1:
        {
          await Get.put(
              SpeakersController().refreshSpeakers(showMessage: false));
          break;
        }
    }
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
