import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/modules/speakers/controllers/speaker_controller.dart';
import 'package:droidcon_nairobi/app/modules/speakers/controllers/speakers_controller.dart';

class SpeakerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpeakersController>(
      () => SpeakersController(),
    );
    Get.lazyPut<SpeakerController>(
      () => SpeakerController(),
    );
  }
}
