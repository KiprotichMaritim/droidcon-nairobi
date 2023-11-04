import 'package:droidcon_nairobi/app/models/model.dart';
import 'package:droidcon_nairobi/app/models/speaker_model.dart';

class Session extends Model {
  late String title;
  late String startsAt;
  late String description;
  late bool isNotATalk;
  late List<Speaker> speakers;
  late String roomName;
  late int duration;

  Session();

  @override
  Session.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    title = json['title'];
    startsAt = json['startsAt'];
    description = json['description'];
    isNotATalk = boolFromJson(json, 'isNotATalk');
    speakers = listFromJson(json, 'speakers', (v) => Speaker.fromJson(v));
    roomName = json['roomName'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['startsAt'] = startsAt;
    data['isNotATalk'] = isNotATalk;
    data['speakers'] = speakers;
    data['roomName'] = roomName;
    data['duration'] = duration;
    data['description'] = description;
    return data;
  }
}
