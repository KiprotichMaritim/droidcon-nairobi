import 'package:droidcon_nairobi/app/models/session_model.dart';
import 'package:get/get.dart';
import 'package:droidcon_nairobi/app/providers/mock_api.dart';

class SessionRepository {
  MockApi mockApi;

  SessionRepository() : mockApi = Get.put(MockApi());

  Future<List<Session>> getSessionsDayOne() {
    return mockApi.fetchSessionsDayOne();
  }

  Future<List<Session>> getSessionsDayTwo() {
    return mockApi.fetchSessionsDayTwo();
  }

  Future<List<Session>> getSessionsDayThree() {
    return mockApi.fetchSessionsDayThree();
  }
}
