import 'package:droidcon_nairobi/app/modules/sessions/views/session_view.dart';
import 'package:get/get.dart' show GetPage, Transition;

import 'package:droidcon_nairobi/app/routes/app_routes.dart';
import 'package:droidcon_nairobi/app/modules/root/views/root_view.dart';
import 'package:droidcon_nairobi/app/modules/root/bindings/root_bindings.dart';
import 'package:droidcon_nairobi/app/modules/speakers/bindings/speakers_binding.dart';
import 'package:droidcon_nairobi/app/modules/speakers/views/speakers_view.dart';
import 'package:droidcon_nairobi/app/modules/sessions/bindings/session_binding.dart';
import 'package:droidcon_nairobi/app/modules/speakers/views/speaker_view.dart';

class AppPages {
  static const initial = Routes.root;

  static final routes = [
    GetPage(
        name: Routes.root,
        page: () => const RootView(),
        binding: RootBindings()),
    GetPage(
        name: Routes.speakers,
        page: () => SpeakersView(),
        binding: SpeakerBinding()),
    GetPage(
        name: Routes.speaker,
        page: () => const SpeakerView(),
        binding: SpeakerBinding()),
    GetPage(
        name: Routes.session,
        page: () => const SessionView(),
        binding: SessionBinding())
  ];
}
