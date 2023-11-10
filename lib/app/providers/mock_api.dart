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
        'title':
            "Innovator, Founder Akili Factory and EV electrical engineer, Roam Electric",
        'worksAt': '',
        'bio':
            'I am a creative driven tech lover with a passion for renewable energy and innovating technology to create new opportunities for, and solve old problems bedeviling Africans! With a background of electrical engineering, I have put emphasis on building for Africa by Africans, which led me to found Akili Factory, a tech community focused on this. With the collaboration of members from Akili Factory and support from partners such as Microsoft Garage I spear headed our pilot program aimed at combatting unemployment and food security problem in Africa, that is currently at it\'s testing phase and will be ready for deployment within the year. In addition my experience as an engineer in the EV sector at Roam Electric has given me a front seat on the merging of EVs and android systems.',
        'links': [
          {
            'type': 'twitter',
            'title': '@skuota',
            'url': 'https://twitter.com/skuota'
          },
          {
            'type': 'linkedIn',
            'title': 'KiprotichMaritim',
            'url': 'https://linkedin.com/in/KiprotichMaritim'
          },
          {
            'type': 'github',
            'title': '@KiprotichMaritim',
            'url': 'https://github.com/KiprotichMaritim'
          }
        ]
      },
      {
        'id': '2',
        'name': 'Test User',
        'image': '',
        'title': "UI/UX Accessibillity Engineer",
        'worksAt': 'Contractor',
        'bio': 'This is a very long description of what a UI/UX Engineer does',
        'links': [
          {
            'type': 'twitter',
            'title': '@skuota',
            'url': 'https://twitter.com/skuota'
          },
          {
            'type': 'linkedIn',
            'title': 'KiprotichMaritim',
            'url': 'https://linkedin.com/in/KiprotichMaritim'
          },
          {
            'type': 'github',
            'title': '@KiprotichMaritim',
            'url': 'https://github.com/KiprotichMaritim'
          }
        ]
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
        'roomName': 'Mekatilili',
        'duration': 60
      },
      {
        'id': '2',
        'title': "Welcome Address",
        'startsAt': '9:00 AM',
        'isNotATalk': true,
        'description': 'Official welcome address to Droidcon Nairobi 2023',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 20
      },
      {
        'id': '3',
        'title': "Community Day keynote: Bernard Banta",
        'startsAt': '9:20 AM',
        'isNotATalk': false,
        'description': 'Community day keynote',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 40
      },
      {
        'id': '4',
        'title': "Panel: Tech Leadership to Elevate Software Engineering",
        'startsAt': '11:20 AM',
        'isNotATalk': false,
        'description': 'Teams: Maia Grotepass, Rodger Taracha, Sasha Denisov',
        'speakers': [],
        'roomName': 'Other',
        'duration': 50
      },
      {
        'id': '5',
        'title': "Community Slot: Women TechMakers Nairobi",
        'startsAt': '11:10 AM',
        'isNotATalk': false,
        'description': 'Leveraging Communities for Growth',
        'speakers': [],
        'roomName': 'Room A',
        'duration': 40
      },
      {
        'id': '7',
        'title': "Show & Tell: Mastering Android Build Variants",
        'startsAt': '11:20 AM',
        'isNotATalk': false,
        'description': 'A Step-by-Step Guide: Alpha Omondi',
        'speakers': [],
        'roomName': 'Room C',
        'duration': 40
      },
      {
        'id': '8',
        'title': "Driving the future: Android and Electric vehicles",
        'startsAt': '11:10 AM',
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
            "Community Slot: Elixir Conf: Fun, Functional & Concurrent Programming with Elixir - Muthoni",
        'startsAt': '11:00 AM',
        'isNotATalk': true,
        'description': 'Fun, Functional & Concurrent Programming with Elixir ',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 40
      },
      {
        'id': '12',
        'title':
            "Show & Tell: Kt-pub : A Compose Multiplatform Story for Kotlin Developers",
        'startsAt': '12:00 PM',
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
        'title': "Entry & Registration",
        'startsAt': '08:00 AM',
        'isNotATalk': true,
        'description': 'Entry & Registration',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 30
      },
      {
        'id': '2',
        'title': "Welcome Address",
        'startsAt': '09:30 AM',
        'isNotATalk': true,
        'description': 'Welcome Address',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 20
      },
      {
        'id': '3',
        'title': "Keynote",
        'startsAt': '08:00 AM',
        'isNotATalk': true,
        'description': 'Keynote',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 30
      },
      {
        'id': '4',
        'title': "Tea Break",
        'startsAt': '10:20 AM',
        'isNotATalk': true,
        'description': 'Tea Break',
        'speakers': [],
        'roomName': 'All Rooms',
        'duration': 30
      },
      {
        'id': '5',
        'title': "Fake it till you test it",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'When writing unit tests, it is often necessary to create disposable objects that mimic the behavior of real dependencies. These objects, known as test doubles, can help us to isolate our tests and ensure that they are testing the correct behavior or state of the system under test. In this talk, we will explore the different types of test doubles, discuss the pros and cons of each type of test double, and provide examples of how they can be used in Kotlin. We will also revisit the old debate between mocks and fakes, and argue that fakes are often a better choice for Kotlin projects. This is because fakes are easier to write and maintain, and they can be used to express the behavior of real dependencies in a more precise way. Finally, we will give examples of how to use Kotlin to write fakes. We will show how to use Kotlin functional programming features to create fakes that are easy to read and understand.',
        'speakers': [],
        'roomName': 'Hawecha',
        'duration': 35
      },
      {
        'id': '5',
        'title': "Fake it till you test it",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'When writing unit tests, it is often necessary to create disposable objects that mimic the behavior of real dependencies. These objects, known as test doubles, can help us to isolate our tests and ensure that they are testing the correct behavior or state of the system under test. In this talk, we will explore the different types of test doubles, discuss the pros and cons of each type of test double, and provide examples of how they can be used in Kotlin. We will also revisit the old debate between mocks and fakes, and argue that fakes are often a better choice for Kotlin projects. This is because fakes are easier to write and maintain, and they can be used to express the behavior of real dependencies in a more precise way. Finally, we will give examples of how to use Kotlin to write fakes. We will show how to use Kotlin functional programming features to create fakes that are easy to read and understand.',
        'speakers': [],
        'roomName': 'Hawecha',
        'duration': 35
      },
      {
        'id': '6',
        'title':
            "Mastering Flutter DevTools for App Performance Debugging like a Detective🕵🏽",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'Don\'t fix what is not broken. Does poor performance count as broken🤔. In this talk, I dive deeper into performance improvements by looking at the actual numbers using Devtools provided in Flutter. This will be done by: - Jumping into performance graphs to understand what they show from an example app. - using the information from the graphs to point sections on the app that can be improved. - offering ways to address the performance issues on the app and ensure proper resource utilization. I seek to equip the audience with the know-how to diagnose and treat performance issues they may be experiencing in their apps, especially from a list of obvious but mostly ignored elements that affect performance such as Lists.',
        'speakers': [],
        'roomName': 'Hawecha',
        'duration': 35
      },
      {
        'id': '8',
        'title': "Optimizing Flutter Apps for Low-End Devices",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'With the increasing diversity of mobile devices, it is crucial to ensure that our apps perform efficiently on devices with limited resources. This session aims to provide in-depth knowledge and practical strategies for optimizing Flutter apps for optimal performance on low-end devices. Whether you are a beginner or an experienced Flutter developer, this session will equip you with valuable insights and techniques to enhance your app\'s performance on low-end devices.',
        'speakers': [],
        'roomName': 'Hawecha',
        'duration': 35
      },
      {
        'id': '9',
        'title': "Crafting Custom Lint Rules: Elevating Android Code Quality",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'We will explore the world of custom lint rules in Android development. Uncover the process of designing and implementing personalized lint rules that align with your project\'s standards. From enforcing naming conventions to addressing architecture concerns, discover how custom lint rules can enhance your codebase\'s integrity. Elevate your Android development skills by mastering the art of crafting custom lint rules for superior code quality.',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 35
      },
      {
        'id': '10',
        'title':
            "Best Practices for Developing Amazing Kotlin Multiplatform Apps",
        'startsAt': '11:50 AM',
        'isNotATalk': false,
        'description':
            'Since reaching Beta status in October 2022, Kotlin Multiplatform (KMP) has become a popular choice for teams wanting to share code between platforms, especially between iOS and Android. While knowledge of Kotlin and the Android platform is a good start to understanding this technology, there’s still plenty to learn and master. In this talk, we will focus on the recommended approaches to getting Kotlin Multiplatform right. More specifically, we will learn about: - Using the expect/actual mechanism correctly. - Doing concurrent operations with coroutines and flows in Kotlin Multiplatform apps. - The recommended libraries and tools to use in your Kotlin Multiplatform apps. - Sharing images, internationalized strings, and other resources between platforms. After this session, participants will have a better understanding of the complexities of developing Kotlin Multiplatform applications and how to best navigate this new and exciting landscape.',
        'speakers': [],
        'roomName': 'Hawecha',
        'duration': 40
      },
      {
        'id': '11',
        'title': "Handling Process Death In Flutter like a pro",
        'startsAt': '11:50 AM',
        'isNotATalk': false,
        'description':
            'Any Android app could lose its UI state as a result of activity or process regeneration. This loss of state can be caused by things like configuration changes (the activity is deleted and restarted unless the configuration change is handled manually) or system-initiated process death. While the programme is running in the background, the device releases resources (such memory) for usage by other processes. We will cover how to handle Android process death in this session so that we can keep track of user activities even after the system terminates the app in the background..',
        'speakers': [],
        'roomName': 'Hawecha',
        'duration': 40
      },
      {
        'id': '12',
        'title': "Mediapipe: Making On-Device Machine Learning a Piece of Pie",
        'startsAt': '11:50 AM',
        'isNotATalk': false,
        'description':
            'In a world where mobile applications are becoming increasingly intelligent, leveraging machine learning is essential to deliver innovative and intelligent experiences to your users. In this session, attendees will learn about Image Classification and Embedding on Android with MediaPipe. We will specifically focus on the MediaPipe Model Maker covering how one can perform image classification and embedding on Android. Through a hands-on coding demo on building an image classification model through transfer learning. Attendees will leave the session confident about using MediaPipe in building their own innovative solutions on Android.',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 40
      },
      {
        'id': '13',
        'title':
            "Building Resilient Flutter Apps: Layered Architecture with a Focus on Testing and Infrastructure",
        'startsAt': '12:30 PM',
        'isNotATalk': false,
        'description':
            'In this presentation, we delve into the world of Flutter architecture, focusing on the concept of layered architecture and its impact on testing and infrastructure. We explore the benefits of adopting a layered approach in Flutter development as broken down below: , including improved code organization, maintainability, and scalability. We discuss how testing plays a crucial role in layered architecture, enabling testability, modular design, and catching bugs early. Additionally, we touch upon the importance of infrastructure components such as linting, automated testing, app bundle creation, and deployment in supporting the architecture. The discussion is as broken down below: Benefits of Proper Architecture: · A discussion on the advantages of layered architecture specifically for Flutter development. · Exploring how it improves code organization and maintainability. · Addressing the separation of concerns and independent scaling of layers. · Explaining how Flutter\'s widget-based UI aligns well with the presentation layer of layered architecture. Testing in Layered Architecture: · Discussing the advantages of layered architecture in facilitating testing. · Explaining how clear separation of layers improves testability. · Discussing the ability to test individual layers in isolation and mock dependencies. · Highlighting on the different types of testing in layered architecture, such as unit testing, integration testing, and UI testing. Infrastructure Summary: · Looking into the importance of linting for consistent code quality and adherence to layered architecture. · Discussing the role of automated testing in ensuring the functionality and reliability of the app. · Highlighting on the significance of building app bundles for efficient distribution and optimization. Join us as we explore the symbiotic relationship between architecture, testing, and infrastructure in Flutter, and discover how incorporating these elements can lead to robust and successful app development.',
        'speakers': [],
        'roomName': 'Lenana Peak',
        'duration': 40
      },
      {
        'id': '13',
        'title':
            "Beyond the Screen: Crafting Inclusive Mobile Experiences with Accessibility",
        'startsAt': '12:40 PM',
        'isNotATalk': false,
        'description':
            'Are you a mobile app developer looking to create more inclusive experiences for your users? Whether you\'re a seasoned pro or just starting your journey in app development, this 40-minute session is designed for you. "Beyond the Screen: Crafting Inclusive Mobile Experiences with Accessibility" will provide valuable insights and practical strategies for developers of all levels to enhance their apps with accessibility features. In this session, you\'ll embark on a journey into the world of inclusive design, gaining a profound understanding of its principles and significance in modern mobile app development. Discover the art of seamlessly weaving accessibility features into your applications, ensuring that they cater to a diverse user base. Whether you\'re a beginner seeking a solid foundation or an experienced developer looking to refine your skills, you\'ll find actionable takeaways to foster intuitive and user-friendly apps for everyone. Key Takeaways: 1. Uncover the fundamentals of inclusive design and its pivotal role in contemporary app development. 2. Explore practical techniques for integrating accessibility features effortlessly, fostering an inclusive user experience. 3. Discover the essence of a user-centric approach, ensuring that your apps are not only functional but also genuinely user-friendly. 4. Gain insights into effective testing methods and harnessing feedback from diverse user groups to continually improve accessibility. 5. Delve into real-world case studies, showcasing the tangible impact of accessibility on user engagement and the overall success of your mobile applications. This session aims to empower you with the knowledge and tools to create mobile apps that transcend limitations, offering a delightful user experience to individuals of all abilities and ages. Whether you\'re a novice eager to begin your journey or a seasoned developer dedicated to enhancing your accessibility skills, join me for a captivating exploration into the art of crafting truly inclusive mobile experiences.',
        'speakers': [],
        'roomName': 'Lenana Peak',
        'duration': 40
      },
      {
        'id': '15',
        'title':
            "Case Study: Building a FinTech Flutter App to Accept Credit Cards on Planes",
        'startsAt': '02:20 PM',
        'isNotATalk': false,
        'description':
            'Let\'s dive into a cool project I tackled - building a Flutter app for processing payment cards up in the air, literally on planes! This wasn\'t just any app; I had to think about when the internet was a no-show and work around airlines-related and high-regulated stuff. The app is now deployed in production on major US and EU commercial airlines. Key Points The Challenge of In-flight Transactions: Understanding the complexities and challenges faced when dealing with transactions 35,000 feet in the air and how Flutter helped tackle those No Wi-Fi, No Problem: Designing a reliable Flutter architecture to handle card transactions even when offline Safety First, Always: Ensure passengers\' card details are locked tighter than the plane\'s overhead bins and how I complied with cybersecurity standards when developing the app',
        'speakers': [],
        'roomName': 'Lenana Peak',
        'duration': 40
      },
      {
        'id': '14',
        'title':
            "Case Study: Building a FinTech Flutter App to Accept Credit Cards on Planes",
        'startsAt': '02:20 PM',
        'isNotATalk': false,
        'description':
            'Let\'s dive into a cool project I tackled - building a Flutter app for processing payment cards up in the air, literally on planes! This wasn\'t just any app; I had to think about when the internet was a no-show and work around airlines-related and high-regulated stuff. The app is now deployed in production on major US and EU commercial airlines. Key Points The Challenge of In-flight Transactions: Understanding the complexities and challenges faced when dealing with transactions 35,000 feet in the air and how Flutter helped tackle those No Wi-Fi, No Problem: Designing a reliable Flutter architecture to handle card transactions even when offline Safety First, Always: Ensure passengers\' card details are locked tighter than the plane\'s overhead bins and how I complied with cybersecurity standards when developing the app',
        'speakers': [],
        'roomName': 'Lenana Peak',
        'duration': 40
      },
      {
        'id': '15',
        'title':
            "Case Study: Building a FinTech Flutter App to Accept Credit Cards on Planes",
        'startsAt': '02:20 PM',
        'isNotATalk': false,
        'description':
            'Let\'s dive into a cool project I tackled - building a Flutter app for processing payment cards up in the air, literally on planes! This wasn\'t just any app; I had to think about when the internet was a no-show and work around airlines-related and high-regulated stuff. The app is now deployed in production on major US and EU commercial airlines. Key Points The Challenge of In-flight Transactions: Understanding the complexities and challenges faced when dealing with transactions 35,000 feet in the air and how Flutter helped tackle those No Wi-Fi, No Problem: Designing a reliable Flutter architecture to handle card transactions even when offline Safety First, Always: Ensure passengers\' card details are locked tighter than the plane\'s overhead bins and how I complied with cybersecurity standards when developing the app',
        'speakers': [],
        'roomName': 'Lenana Peak',
        'duration': 40
      }
    };
    return sessions.map<Session>((obj) => Session.fromJson(obj)).toList();
  }

  Future<List<Session>> fetchSessionsDayThree() async {
    var sessions = {
      {
        'id': '1',
        'title': "Entry & Registration",
        'startsAt': '08:00 AM',
        'isNotATalk': true,
        'description': 'Entry & Registration',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 30
      },
      {
        'id': '2',
        'title': "Welcome Address",
        'startsAt': '09:30 AM',
        'isNotATalk': true,
        'description': 'Welcome Address',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 20
      },
      {
        'id': '3',
        'title': "Keynote",
        'startsAt': '08:00 AM',
        'isNotATalk': true,
        'description': 'Keynote',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 30
      },
      {
        'id': '4',
        'title': "Tea Break",
        'startsAt': '10:20 AM',
        'isNotATalk': true,
        'description': 'Tea Break',
        'speakers': [],
        'roomName': 'Mekatilili, Hawecha, Lenana Peak, Muthoni',
        'duration': 30
      },
      {
        'id': '1',
        'title': "Empowering Diversity and Inclusion at remote workplaces",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'Everyone has been having conversations about how diversity is crucial and an asset. But do we really understand it? Are we really embracing a diverse and inclusive workplace? Could we all together handle the stress from COVID-19 and the extended isolation because of remote workplace driving negative emotions in employees together as a firm? How can a diverse and inclusive workplace boost business performance consistently? The remote workplace has changed team dynamics. Some employees are more productive while some are not, they need in-person interaction. In this lecture, we will talk about how we can build a diverse and inclusive environment while working remotely to foster an open culture so everyone can adapt and innovate with flexibility. We will learn about steps in building a diverse community that empowers a safe space for all employees to voice their feelings, ask questions, share any concerns they have, or just listen. When we listen and celebrate what is both common and different, we become a wiser, more inclusive, and better organization.',
        'speakers': [],
        'roomName': 'Muthoni',
        'duration': 40
      },
      {
        'id': '2',
        'title': "The Mobile Application Security Commandments by Heart",
        'startsAt': '11:00 AM',
        'isNotATalk': false,
        'description':
            'Developers often prioritize quick releases over security in the fast-paced world of mobile app development. However, this approach leaves applications and their users vulnerable to various security threats. In this presentation, I will examine the essential security best practices for mobile app development outlined by the OWASP Mobile Application Security Verification Standard (MASVS). I will highlight the significant differences in security posture by comparing an app developed naively to one that incorporates OWASP\'s best practices. Key Takeaways and Learning Points: 1. Understanding Vulnerabilities: Grasp the most common vulnerabilities in mobile applications today and how they can be maliciously exploited. 2. OWASP MASVS Deep Dive: A comprehensive overview of the OWASP Mobile Application Security Verification Standard and why it\'s the gold standard in mobile app security. 3. Practical Application: Witness a live demo contrasting a naively built app against one built following OWASP best practices. See firsthand the tangible benefits of prioritizing security. 4. Secure Development Lifecycle: Learn about integrating security practices throughout the app development lifecycle, from design to deployment. 5. Empowerment: Walk away with actionable insights, tools, and practices that you can immediately implement in your mobile app development process. I have previously presented on Android Security and Insecurity at SheHacksKe. SheHacksKe is a community of security researchers and practitioners in Kenya that has dramatically influenced the cyber security landscape. I\'ve also worked as a security analyst at Yelbridges Limited, focusing on mobile application security. Keywords for Talk Submission: - Mobile Application Security - OWASP MASVS - Vulnerability Assessment - Mobile Threat Landscape - Cyber Security',
        'speakers': [],
        'roomName': 'Mekatilili',
        'duration': 40
      }
    };
    return sessions.map<Session>((obj) => Session.fromJson(obj)).toList();
  }
}
