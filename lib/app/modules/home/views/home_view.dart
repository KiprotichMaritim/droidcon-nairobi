import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:droidcon_nairobi/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: true,
        shrinkWrap: false,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            expandedHeight: 60,
            elevation: 0.5,
            floating: false,
            title: SvgPicture.asset(
              'assets/img/droidcon_logo.svg',
              semanticsLabel: 'Droidcon Logo',
              height: 50,
              width: 30,
            ),
            //centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Wrap(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(children: [
                    Text(
                      'Hello,',
                      style: Get.textTheme.headlineMedium,
                    )
                  ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(children: [
                    Text(
                      'Welcome to Droidcon Nairobi',
                      style: Get.textTheme.headlineSmall,
                    )
                  ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(children: [
                    Text(
                      'Nov 8th - Nov 10th 2023',
                      style: Get.textTheme.bodySmall,
                    )
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
