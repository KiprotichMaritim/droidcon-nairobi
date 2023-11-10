import 'package:droidcon_nairobi/app/modules/speakers/widgets/speaker_list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:droidcon_nairobi/app/modules/speakers/controllers/speaker_controller.dart';
import 'package:droidcon_nairobi/app/models/link_model.dart';
import 'package:logger/logger.dart';

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
              if (controller.speaker.value.links.isNotEmpty) ...{
                Text('Links:', style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 12),
                _SpeakerLinks(links: controller.speaker.value.links),
              },
            ],
          ),
        ),
      ),
    );
  }
}

class _SpeakerLinks extends StatelessWidget {
  const _SpeakerLinks({
    required this.links,
  });

  final List<Link> links;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      runSpacing: 8,
      children: links.map(
        (link) {
          return GestureDetector(
            onTap: () async {
              final linkUri = Uri.parse(link.url);

              if (await canLaunchUrl(linkUri)) {
                try {
                  await launchUrl(linkUri);
                } catch (e) {
                  // ignore: use_build_context_synchronously
                  _showFailedToLaunchUrlSnackbar(
                      context: context, url: link.url);
                }
              } else {
                // ignore: use_build_context_synchronously
                _showFailedToLaunchUrlSnackbar(context: context, url: link.url);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(link.iconData, size: 14, color: Colors.grey.shade700),
                  const SizedBox(width: 6),
                  Text(
                    link.title,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void _showFailedToLaunchUrlSnackbar(
      {required BuildContext context, required String url}) {
    if (!context.mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Could not open url: $url'),
        action: SnackBarAction(
          label: 'Copy',
          onPressed: () => Clipboard.setData(ClipboardData(text: url)),
        ),
      ),
    );
  }
}

extension _LinkExt on Link {
  IconData get iconData {
    switch (type.toLowerCase()) {
      case 'twitter':
        return FontAwesomeIcons.twitter;
      case 'instagram':
        return FontAwesomeIcons.instagram;
      case 'linkedin':
        return FontAwesomeIcons.linkedin;
      default:
        return FontAwesomeIcons.globe;
    }
  }
}
