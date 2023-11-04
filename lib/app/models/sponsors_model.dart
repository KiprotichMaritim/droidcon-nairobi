import 'package:droidcon_nairobi/app/models/model.dart';

class Sponsor extends Model {
  late String name;
  late String description;
  late String logo;

  Sponsor.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    description = json['description'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['logo'] = logo;
    return data;
  }
}
