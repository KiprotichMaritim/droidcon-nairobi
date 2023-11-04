import 'package:get/get.dart';

import 'package:droidcon_nairobi/app/models/session_model.dart';

class SessionController extends GetxController {
  final session = Session().obs;

  @override
  Future<void> onInit() async {
    session.value = Get.arguments as Session;
    super.onInit();
  }
}
