import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import 'package:droidcon_nairobi/app/modules/sessions/controllers/session_controller.dart';
import 'package:droidcon_nairobi/app/modules/home/widgets/session_room.dart';
import 'package:droidcon_nairobi/app/modules/home/widgets/session_duration.dart';
import 'package:droidcon_nairobi/app/modules/speakers/widgets/speaker_list_item_widget.dart';

class SessionView extends GetView<SessionController> {
  const SessionView({super.key});

  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    logger.d(controller.session.value.toJson());
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Session details".tr,
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
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 16),
              Align(
                  child: Text(
                controller.session.value.title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              )),
              const SizedBox(height: 24),
              Align(child: Text(controller.session.value.startsAt)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SessionRoom(roomName: controller.session.value.roomName),
                  const SizedBox(width: 8),
                  SessionDuration(
                      durationInMinutes: controller.session.value.duration)
                ],
              ),
              const SizedBox(height: 24),
              for (final speaker in controller.session.value.speakers) ...{
                SpeakerListItem(speaker: speaker),
              },
              const SizedBox(height: 16),
              Text('Description:',
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 12),
              Text(
                controller.session.value.description,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(height: 120)
            ]),
          ),
        ));
  }
}
