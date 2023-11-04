import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/models/speaker_model.dart';

class SpeakerController extends GetxController {
  final speaker = Speaker().obs;

  @override
  Future<void> onInit() async {
    speaker.value = Get.arguments as Speaker;
    super.onInit();
  }
}
