import 'package:droidcon_nairobi/app/modules/speakers/widgets/speaker_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'package:droidcon_nairobi/app/modules/speakers/controllers/speaker_controller.dart';

class SpeakerView extends GetView<SpeakerController> {
  const SpeakerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Speaker details".tr,
          style: Get.textTheme.titleLarge,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Get.theme.hintColor),
          onPressed: () => {Get.back()},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              SpeakerListItem(speaker: controller.speaker.value),
              const SizedBox(height: 16),
              Text('Bio:', style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 12),
              Text(
                controller.speaker.value.bio.trim(),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(height: 16),
              Text('Links:', style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
