import 'package:droidcon_nairobi/app/modules/speakers/widgets/speaker_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Wrap(
                spacing: 4,
                runSpacing: 8,
                children: [
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(FontAwesomeIcons.twitter,
                                size: 14, color: Colors.grey.shade700),
                            const SizedBox(width: 6),
                            Text(
                              controller.speaker.value.twitter!,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        )),
                  ),
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(FontAwesomeIcons.linkedin,
                                size: 14, color: Colors.grey.shade700),
                            const SizedBox(width: 6),
                            Text(
                              controller.speaker.value.linkedIn!,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        )),
                  ),
                  GestureDetector(
                    onTap: () async {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 12),
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(FontAwesomeIcons.github,
                                size: 14, color: Colors.grey.shade700),
                            const SizedBox(width: 6),
                            Text(
                              controller.speaker.value.github!,
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
