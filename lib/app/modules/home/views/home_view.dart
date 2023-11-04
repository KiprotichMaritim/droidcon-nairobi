import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/modules/home/controllers/home_controller.dart';
import 'package:droidcon_nairobi/app/modules/home/widgets/session_list_item_widget.dart';
import 'package:droidcon_nairobi/app/models/session_model.dart';
import 'package:logger/logger.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: "Wed, 8th Nov",
                ),
                Tab(
                  text: "Thur, 9th Nov",
                ),
                Tab(
                  text: "Fri, 10th Nov",
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _SessionsList(sessions: controller.sessionsDayOne),
                  _SessionsList(sessions: controller.sessionsDayTwo),
                  _SessionsList(sessions: controller.sessionsDayThree),
                ],
              ),
            )
          ],
        ));
  }
}

class _SessionsList extends StatelessWidget {
  const _SessionsList({
    required this.sessions,
  });

  final List<Session> sessions;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 12, bottom: 90),
        itemCount: sessions.length,
        itemBuilder: (BuildContext context, int index) {
          final session = sessions[index];

          final startsAtSameTimeAsPreviousSession =
              index > 0 && sessions[index - 1].startsAt == session.startsAt;
          var logger = Logger();
          logger.d('SESSION');
          logger.d(session.speakers);
          return SessionListItemWidget(
            session: session,
            sessionTimeVisibility: startsAtSameTimeAsPreviousSession //
                ? SessionTimeVisibility.invisible
                : SessionTimeVisibility.visible,
            backgroundColor:
                index.isEven ? Colors.transparent : Colors.grey.shade50,
            hideSessionFormatIfItIsSession: true,
          );
        },
      ),
    );
  }
}
