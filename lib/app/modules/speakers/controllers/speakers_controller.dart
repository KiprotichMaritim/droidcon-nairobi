import 'package:get/get.dart';

import '../../../models/speaker_model.dart';
import '../../../repositories/speaker_repository.dart';
import '../../../common/ui.dart';

class SpeakersController extends GetxController {
  SpeakerRepository speakerRepository;

  final speakers = <Speaker>[].obs;

  SpeakersController() : speakerRepository = SpeakerRepository();

  @override
  Future<void> onInit() async {
    await refreshSpeakers(showMessage: true);
    super.onInit();
  }

  Future refreshSpeakers({bool showMessage = false}) async {
    await getSpeakers();
    if (showMessage == true) {
      Get.showSnackbar(Ui.successSnackBar(
          message: "List of speakers refreshed successfully".tr));
    }
  }

  Future getSpeakers() async {
    try {
      speakers.assignAll(await speakerRepository.getAllSpeakers());
    } catch (e) {
      Get.showSnackbar(Ui.errorSnackBar(message: e.toString()));
    }
  }
}
