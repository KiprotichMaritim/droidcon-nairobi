import 'package:droidcon_nairobi/app/models/model.dart';

class Speaker extends Model {
  late String name;
  late String title;
  late String worksAt;
  late String bio;
  String? twitter;
  String? linkedIn;
  String? github;

  Speaker();

  @override
  Speaker.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    title = json['title'];
    worksAt = json['worksAt'];
    bio = json['bio'];
    twitter = json['twitter'];
    linkedIn = json['linkedIn'];
    github = json['github'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['title'] = title;
    data['worksAt'] = worksAt;
    data['bio'] = bio;
    data['twitter'] = twitter;
    data['linkedIn'] - linkedIn;
    data['github'] = github;
    return data;
  }
}
