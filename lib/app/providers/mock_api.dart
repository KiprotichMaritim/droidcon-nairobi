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
        'image':
            "https://sessionize.com/image/6aed-400o400o2-YpD6Qra2GWqp8Ea5d1yN7n.jpg",
        'name': 'Nicole Akinyi',
        'title': "Innovator, Founder",
        'worksAt': 'Akili Factory and EV electrical engineer, Roam Electric',
        'bio':
            'I am a creative driven tech lover with a passion for renewable energy and innovating technology to create new opportunities for, and solve old problems bedeviling Africans! With a background of electrical engineering, I have put emphasis on building for Africa by Africans, which led me to found Akili Factory, a tech community focused on this. With the collaboration of members from Akili Factory and support from partners such as Microsoft Garage I spear headed our pilot program aimed at combatting unemployment and food security problem in Africa, that is currently at it\'s testing phase and will be ready for deployment within the year. In addition my experience as an engineer in the EV sector at Roam Electric has given me a front seat on the merging of EVs and android systems.',
        'linkedIn': '@nicole akinyi',
      },
      {
        'id': '2',
        'name': 'Test User',
        'image': '',
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
        'title': "Entry & Registration",
        'startsAt': '8:00 AM',
        'isNotATalk': true,
        'description':
            'Welcome to Droidcon Nairobi 2023, the largest android focused developer conference in africa',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 60
      },
      {
        'id': '2',
        'title': "Welcome Address",
        'startsAt': '9:00 AM',
        'isNotATalk': true,
        'description': 'Official welcome address to Droidcon Nairobi 2023',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 20
      },
      {
        'id': '3',
        'title': "Community Day keynote: Bernard Banta",
        'startsAt': '9:20 AM',
        'isNotATalk': false,
        'description': 'Community day keynote',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 40
      },
      {
        'id': '4',
        'title': "Panel: Tech Leadership to Elevate Software Engineering",
        'startsAt': '10:10 AM',
        'isNotATalk': false,
        'description': 'Teams: Maia Grotepass, Rodger Taracha, Sasha Denisov',
        'speakers': [],
        'roomName': 'Other',
        'duration': 50
      },
      {
        'id': '5',
        'title': "Community Slot: Women TechMakers Nairobi",
        'startsAt': '10:10 AM',
        'isNotATalk': false,
        'description': 'Leveraging Communities for Growth',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 40
      },
      {
        'id': '7',
        'title': "Show & Tell: Mastering Android Build Variants",
        'startsAt': '10:10 AM',
        'isNotATalk': false,
        'description': 'A Step-by-Step Guide: Alpha Omondi',
        'speakers': [],
        'roomName': 'Room C',
        'duration': 40
      },
      {
        'id': '8',
        'title': "Driving the future: Android and Electric vehicles",
        'startsAt': '10:10 AM',
        'isNotATalk': false,
        'description':
            'In this talk I shall take the audience on a journey into the future of transportation as we explore the exciting convergence of Android technology and electric vehicles (EVs). I shall give a glimpse of the future of android and mobility in Africa, from seamless infotainment integration to remote control, connectivity, and charging infrastructure, discover how Android is shaping the sustainable and tech-forward future of our roads. Buckle up for a compelling discussion on how Android is driving the way we move across Africa, making EVs smarter, more efficient, and more accessible for the African population than ever before.',
        'speakers': [
          {
            'id': '1',
            'image':
                "https://sessionize.com/image/6aed-400o400o2-YpD6Qra2GWqp8Ea5d1yN7n.jpg",
            'name': 'Nicole Akinyi',
            'title': "Innovator, Founder",
            'worksAt':
                'Akili Factory and EV electrical engineer, Roam Electric',
            'bio':
                'I am a creative driven tech lover with a passion for renewable energy and innovating technology to create new opportunities for, and solve old problems bedeviling Africans! With a background of electrical engineering, I have put emphasis on building for Africa by Africans, which led me to found Akili Factory, a tech community focused on this. With the collaboration of members from Akili Factory and support from partners such as Microsoft Garage I spear headed our pilot program aimed at combatting unemployment and food security problem in Africa, that is currently at it\'s testing phase and will be ready for deployment within the year. In addition my experience as an engineer in the EV sector at Roam Electric has given me a front seat on the merging of EVs and android systems.',
            'linkedIn': '@nicole akinyi',
          },
        ],
        'roomName': 'Room B',
        'duration': 40
      },
      {
        'id': '9',
        'title': "I'm Done with Android!",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'It\'s a sentiment I\'ve encountered many times in my journey as a developer, and I believe it\'s something many of us have felt at some point. Android development is a lot like being in a relationship with someone who constantly evolves. Just as you think you\'ve figured things out, they change, throwing new surprises and challenges your way. It\'s exhilarating at times, but it can also be incredibly frustrating. There are moments when you feel overwhelmed, like you\'ve reached your breaking point. You question whether it\'s worth continuing. In this session, we will dive deep into how to navigate and thrive in the everchanging Android ecosystem. I will draw from my personal experiences, including contributions to various open-source projects like the Droidconke app, building personal projects, and surrounding myself with inquisitive developers who are always ready to learn, just to mention a few. By the end of the session, the audience will have learned tips and tricks and will be inspired to remain consistent and continue with the grind. Join me on this journey through the ever-evolving world of Android development, where challenges become opportunities, and where persistence leads to progress.',
        'speakers': [],
        'roomName': 'Room C',
        'duration': 40
      },
      {
        'id': '10',
        'title':
            "Community Slot: VueJs Kenya: Building Cross-Platform Native Apps with Vue and NativeScript",
        'startsAt': '11:00 AM',
        'isNotATalk': true,
        'description':
            'Building Cross-Platform Native Apps with Vue and NativeScript',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 40
      },
      {
        'id': '11',
        'title':
            "Show & Tell: Kt-pub : A Compose Multiplatform Story for Kotlin Developers",
        'startsAt': '11:00 AM',
        'isNotATalk': true,
        'description':
            'Show & Tell: Kt-pub : A Compose Multiplatform Story for Kotlin Developers: Ian Okumu',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 40
      },
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
            'image': '',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          },
        ],
        'roomName': 'Hall 4',
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
            'image': '',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          }
        ],
        'roomName': 'Hall 5',
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
            'image': '',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          },
        ],
        'roomName': 'Hall eight',
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
            'image': '',
            'title': "UI/UX Accessibillity Engineer",
            'worksAt': 'Contractor',
            'bio':
                'This is a very long description of what a UI/UX Engineer does',
            'twitter': '@skuota',
            'linkedIn': 'linkedIn',
            'github': '@KiprotichMaritim'
          }
        ],
        'roomName': 'Hall Nine',
        'duration': 35
      }
    };
    return sessions.map<Session>((obj) => Session.fromJson(obj)).toList();
  }
}
