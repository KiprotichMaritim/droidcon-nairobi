import 'package:droidcon_nairobi/app/models/speaker_model.dart';
import 'package:get/get.dart';
import 'package:droidcon_nairobi/app/providers/mock_api.dart';

class SpeakerRepository {
  MockApi mockApi;

  SpeakerRepository() : mockApi = Get.put(MockApi());

  Future<List<Speaker>> getAllSpeakers() {
    return mockApi.fetchSpeakers();
  }
}
