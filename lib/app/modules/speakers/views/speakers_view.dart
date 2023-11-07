import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/modules/speakers/controllers/speakers_controller.dart';
import 'package:droidcon_nairobi/app/modules/speakers/widgets/speaker_list_item_widget.dart';

class SpeakersView extends GetView<SpeakersController> {
  SpeakersView({super.key}) {
    Get.put(SpeakersController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: RefreshIndicator(
            onRefresh: () async {},
            child: controller.speakers.isEmpty
                ? const CustomScrollView(slivers: [
                    SliverFillRemaining(
                      child: Center(
                          child: Text('List of speakers is empty',
                              textAlign: TextAlign.center)),
                    ),
                  ])
                : ListView.builder(
                    padding: const EdgeInsets.only(top: 12, bottom: 0),
                    itemCount: controller.speakers.length,
                    itemBuilder: (BuildContext context, int index) {
                      final speaker = controller.speakers[index];
                      return SpeakerListItem(
                        speaker: speaker,
                        backgroundColor: index.isEven
                            ? Colors.transparent
                            : Colors.grey.shade50,
                      );
                    },
                  )));
  }
}
