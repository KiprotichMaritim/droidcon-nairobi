import 'package:droidcon_nairobi/app/models/speaker_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/routes/app_routes.dart';

class SpeakerListItem extends StatelessWidget {
  final Speaker speaker;
  final Color backgroundColor;
  final EdgeInsets padding;

  const SpeakerListItem(
      {required this.speaker,
      this.backgroundColor = Colors.transparent,
      this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        color: backgroundColor,
        child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.speaker, arguments: speaker);
            },
            child: Row(
              children: [
                //@todo append image URL here
                CircleAvatar(
                  radius: 24,
                  child: Text(
                    speaker.name,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(speaker.name,
                        style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(height: 4),
                    Text(
                      speaker.bio,
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ))
              ],
            )));
  }
}
