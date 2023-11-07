import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/modules/home/widgets/session_room.dart';
import 'package:droidcon_nairobi/app/modules/home/widgets/session_duration.dart';
import 'package:droidcon_nairobi/app/models/session_model.dart';
import 'package:droidcon_nairobi/app/routes/app_routes.dart';
import 'package:droidcon_nairobi/app/modules/home/widgets/favourite_session_icon.dart';

class SessionListItemWidget extends StatelessWidget {
  final Session session;
  final SessionTimeVisibility sessionTimeVisibility;
  final bool? hideSessionFormatIfItIsSession;
  final Color backgroundColor;

  const SessionListItemWidget({
    super.key,
    required this.session,
    required this.sessionTimeVisibility,
    this.backgroundColor = Colors.transparent,
    this.hideSessionFormatIfItIsSession,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(Routes.session, arguments: session);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          color: backgroundColor,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (sessionTimeVisibility == SessionTimeVisibility.gone) ...{
                const SizedBox(),
              } else ...{
                Expanded(
                  child: Opacity(
                    opacity:
                        sessionTimeVisibility == SessionTimeVisibility.visible
                            ? 1
                            : 0,
                    child: Center(
                      child: Text(
                        session.startsAt,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 4),
              },
              Expanded(
                flex: 5,
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                  shadowColor: Colors.transparent,
                  //sessionFormat?.id.sessionFormatBorderColor.withOpacity(0.6) ??
                  //    Colors.transparent,
                  child: DottedBorder(
                    padding: EdgeInsets.zero,
                    radius: const Radius.circular(8),
                    color: session.isNotATalk
                        ? Colors.grey.shade300
                        : Colors.transparent,
                    strokeCap: StrokeCap.round,
                    borderType: BorderType.RRect,
                    dashPattern: const [14, 10],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  session.title.trim(),
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                              if (!session.isNotATalk) ...{
                                FavouriteSessionIcon(sessionId: session.id!),
                              }
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            session.speakers
                                .map((speaker) => speaker.name)
                                .join(', '),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SessionRoom(roomName: session.roomName),
                              const SizedBox(width: 4),
                              Row(
                                children: [
                                  // SessionFormat(
                                  //   sessionFormat: sessionFormat,
                                  //   hideSessionFormatIfItIsSession:
                                  //       hideSessionFormatIfItIsSession ?? false,
                                  // ),
                                  const SizedBox(width: 4),
                                  SessionDuration(
                                      durationInMinutes: session.duration,
                                      isNotATalk: session.isNotATalk),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

enum SessionTimeVisibility {
  visible,
  invisible,
  gone, // won't even occupy space
}
