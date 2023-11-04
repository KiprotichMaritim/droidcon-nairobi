import 'package:droidcon_nairobi/app/models/speaker_model.dart';
import 'package:droidcon_nairobi/app/models/sponsors_model.dart';
import 'package:droidcon_nairobi/app/models/session_model.dart';

class MockApi {
  Future<List<Sponsor>> fetchSponsors() async {
    var sponsors = {
      {
        'id': "1",
        "name": "Ventuki Events",
        "description": "Ventuki is a events app SaaS service",
        "logo": "ventuki.logo"
      }
    };
    return sponsors.map<Sponsor>((obj) => Sponsor.fromJson(obj)).toList();
  }

  Future<List<Speaker>> fetchSpeakers() async {
    var speakers = {
      {
        'id': '1',
        'name': 'Kip Maritim',
        'title': "Senior Software Engineer",
        'worksAt': 'Contractor',
        'bio':
            'Flutter | Fullstack Engineer ~ Senior software engineer at FindEverything.app',
        'twitter': '@skuota',
        'linkedIn': 'linkedIn',
        'github': '@KiprotichMaritim'
      },
      {
        'id': '2',
        'name': 'Test User',
        'title': "UI/UX Accessibillity Engineer",
        'worksAt': 'Contractor',
        'bio': 'This is a very long description of what a UI/UX Engineer does',
        'twitter': '@skuota',
        'linkedIn': 'linkedIn',
        'github': '@KiprotichMaritim'
      }
    };
    return speakers.map<Speaker>((obj) => Speaker.fromJson(obj)).toList();
  }

  Future<List<Session>> fetchSessionsDayOne() async {
    var sessions = {
      {
        'id': '1',
        'title': "Session 1",
        'startsAt': '11:15',
        'isNotATalk': false,
        'description':
            'This 4th in-person event will include several tech communities from the East African Region and continental members. Participants will have an excellent chance to learn about Android development and opportunities and to network with Android experts in the ecosystem.',
        'speakers': [
          {
            'id': '2',
            'name': 'Test User',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          },
        ],
        'roomName': 'linkedIn',
        'duration': 30
      },
      {
        'id': '2',
        'title': "Session 2",
        'startsAt': '11:15',
        'isNotATalk': false,
        'description':
            'This 4th in-person event will include several tech communities from the East African Region and continental members. Participants will have an excellent chance to learn about Android development and opportunities and to network with Android experts in the ecosystem.',
        'speakers': [
          {
            'id': '2',
            'name': 'Test User',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          }
        ],
        'roomName': 'linkedIn',
        'duration': 35
      }
    };
    return sessions.map<Session>((obj) => Session.fromJson(obj)).toList();
  }

  Future<List<Session>> fetchSessionsDayTwo() async {
    var sessions = {
      {
        'id': '1',
        'title': "Session 1 Daya Two",
        'startsAt': '11:15',
        'isNotATalk': false,
        'description':
            'This 4th in-person event will include several tech communities from the East African Region and continental members. Participants will have an excellent chance to learn about Android development and opportunities and to network with Android experts in the ecosystem.',
        'speakers': [
          {
            'id': '2',
            'name': 'Test User',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          },
        ],
        'roomName': 'linkedIn',
        'duration': 30
      },
      {
        'id': '2',
        'title': "Session 2 Day Two",
        'startsAt': '11:15',
        'isNotATalk': false,
        'description':
            'This 4th in-person event will include several tech communities from the East African Region and continental members. Participants will have an excellent chance to learn about Android development and opportunities and to network with Android experts in the ecosystem.',
        'speakers': [
          {
            'id': '2',
            'name': 'Test User',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          }
        ],
        'roomName': 'linkedIn',
        'duration': 35
      }
    };
    return sessions.map<Session>((obj) => Session.fromJson(obj)).toList();
  }

  Future<List<Session>> fetchSessionsDayThree() async {
    var sessions = {
      {
        'id': '1',
        'title': "Session 1 Day Three",
        'startsAt': '11:15',
        'isNotATalk': false,
        'description':
            'This 4th in-person event will include several tech communities from the East African Region and continental members. Participants will have an excellent chance to learn about Android development and opportunities and to network with Android experts in the ecosystem.',
        'speakers': [
          {
            'id': '2',
            'name': 'Test User',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          },
        ],
        'roomName': 'linkedIn',
        'duration': 30
      },
      {
        'id': '2',
        'title': "Session 2 Daya Three",
        'startsAt': '11:15',
        'isNotATalk': false,
        'description':
            'This 4th in-person event will include several tech communities from the East African Region and continental members. Participants will have an excellent chance to learn about Android development and opportunities and to network with Android experts in the ecosystem.',
        'speakers': [
          {
            'id': '2',
            'name': 'Test User',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          }
        ],
        'roomName': 'linkedIn',
        'duration': 35
      }
    };
    return sessions.map<Session>((obj) => Session.fromJson(obj)).toList();
  }
}
