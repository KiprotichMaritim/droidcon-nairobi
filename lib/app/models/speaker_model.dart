import 'package:droidcon_nairobi/app/models/model.dart';
import 'package:droidcon_nairobi/app/models/link_model.dart';

class Speaker extends Model {
  late String name;
  late String title;
  late String worksAt;
  late String bio;
  late String image;
  late List<Link> links;

  Speaker();

  @override
  Speaker.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    title = json['title'];
    worksAt = json['worksAt'];
    bio = json['bio'];
    image = json['image'];
    links = listFromJson(json, 'links', (v) => Link.fromJson(v));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['title'] = title;
    data['worksAt'] = worksAt;
    data['bio'] = bio;
    data['image'] = image;
    data['links'] = links;
    return data;
  }
}
