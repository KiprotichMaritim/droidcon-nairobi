import 'package:droidcon_nairobi/app/models/session_model.dart';
import 'package:droidcon_nairobi/app/repositories/sessions_repository.dart';
import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/repositories/sponsors_repository.dart';
import 'package:droidcon_nairobi/app/models/sponsors_model.dart';

class HomeController extends GetxController {
  SponsorRepository sponsorRepository;
  SessionRepository sessionRepository;

  final sponsors = <Sponsor>[].obs;
  final sessionsDayOne = <Session>[].obs;
  final sessionsDayTwo = <Session>[].obs;
  final sessionsDayThree = <Session>[].obs;

  HomeController()
      : sponsorRepository = SponsorRepository(),
        sessionRepository = SessionRepository();

  @override
  Future<void> onInit() async {
    await getSessions();
    super.onInit();
  }

  Future refreshHome({bool showMessage = false}) async {
    await getSessions();
  }

  Future getSessions() async {
    sessionsDayOne.assignAll(await sessionRepository.getSessionsDayOne());
    sessionsDayTwo.assignAll(await sessionRepository.getSessionsDayTwo());
    sessionsDayThree.assignAll(await sessionRepository.getSessionsDayThree());
  }
}
