import 'package:get/get.dart';
import 'package:droidcon_nairobi/app/models/sponsors_model.dart';
import 'package:droidcon_nairobi/app/providers/mock_api.dart';

class SponsorRepository {
  MockApi mockApi;

  SponsorRepository() : mockApi = Get.put(MockApi());

  Future<List<Sponsor>> getAllSponsors() {
    return mockApi.fetchSponsors();
  }
}
