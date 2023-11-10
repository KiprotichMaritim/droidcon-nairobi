import 'package:droidcon_nairobi/app/models/model.dart';

class Link extends Model {
  late String title;
  late String type;
  late String url;

  Link({required link, required type, required url});

  @override
  Link.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['type'] = type;
    data['url'] = url;
    return data;
  }
}
