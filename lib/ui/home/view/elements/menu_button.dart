import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/presenter/home_presenter.dart';

enum WebsiteSection {
  title,
  aboutMe,
  education,
  experience,
  basketballCareer,
  trips,
  thoughtContent,
}

extension WebsiteSectionTitles on WebsiteSection {
  static Map<WebsiteSection, String> titleFromTypeMap = {
    WebsiteSection.title: "Home",
    WebsiteSection.aboutMe: "Personal Summary",
    WebsiteSection.education: "Education",
    WebsiteSection.experience: "Experience",
    WebsiteSection.basketballCareer: "Basketball",
    WebsiteSection.trips: "Adventures",
    WebsiteSection.thoughtContent: "Thoughts",
  };
  String? get asTitle => titleFromTypeMap[this];
}

class MenuButton extends StatelessWidget {
  final HomePresenter presenter;
  final BuildContext homeContext;

  MenuButton({required this.presenter, required this.homeContext});

  @override
  Widget build(BuildContext context) {
    context = homeContext;
    return Container(
      height: 70,
      width: 70,
      decoration:
          BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle),
      child: PopupMenuButton<Choice>(
        color: Colors.deepOrange,
        icon: Icon(
          Icons.menu,
          color: Colors.black,
          size: 36,
        ),
        onSelected: _handleClick,
        itemBuilder: (BuildContext context) {
          return choices.map((Choice choice) {
            return PopupMenuItem<Choice>(
              value: choice,
              child: Row(
                children: [
                  Icon(choice.icon, color: Colors.white),
                  SizedBox(width: 16),
                  Text(
                    choice.title,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            );
          }).toList();
        },
      ),
    );
  }

  static List<Choice> choices = <Choice>[
    Choice(section: WebsiteSection.title),
    Choice(section: WebsiteSection.aboutMe),
    Choice(
      section: WebsiteSection.education,
    ),
    Choice(section: WebsiteSection.experience),
    Choice(section: WebsiteSection.basketballCareer),
    Choice(section: WebsiteSection.trips),
    Choice(section: WebsiteSection.thoughtContent),
  ];

  void _handleClick(Choice choice) {
    switch (choice.section) {
      case WebsiteSection.title:
        Scrollable.ensureVisible(presenter.titleKey.currentContext!);
        break;
      case WebsiteSection.aboutMe:
        Scrollable.ensureVisible(presenter.aboutMeKey.currentContext!);
        break;
      case WebsiteSection.education:
        Scrollable.ensureVisible(presenter.educationKey.currentContext!);
        break;
      case WebsiteSection.experience:
        Scrollable.ensureVisible(presenter.experienceKey.currentContext!);
        break;
      case WebsiteSection.basketballCareer:
        Scrollable.ensureVisible(presenter.basketballKey.currentContext!);
        break;
      case WebsiteSection.trips:
        Scrollable.ensureVisible(presenter.tripsKey.currentContext!);
        break;
      case WebsiteSection.thoughtContent:
        Scrollable.ensureVisible(presenter.thoughtsKey.currentContext!);
        break;
      default:
        throw FormatException(
            "Section of website not recognized :: ${choice.section}");
    }
  }
}

class Choice {
  final WebsiteSection section;
  final String title;
  final IconData icon;

  Choice({required this.section})
      : title = _setTitle(section),
        icon = _setIcon(section);

  static String _setTitle(WebsiteSection section) {
    switch (section) {
      case WebsiteSection.title:
        return WebsiteSection.title.asTitle!;
      case WebsiteSection.aboutMe:
        return WebsiteSection.aboutMe.asTitle!;
      case WebsiteSection.education:
        return WebsiteSection.education.asTitle!;
      case WebsiteSection.experience:
        return WebsiteSection.experience.asTitle!;
      case WebsiteSection.basketballCareer:
        return WebsiteSection.basketballCareer.asTitle!;
      case WebsiteSection.trips:
        return WebsiteSection.trips.asTitle!;
      case WebsiteSection.thoughtContent:
        return WebsiteSection.thoughtContent.asTitle!;
      default:
        throw FormatException("Section of website not recognized :: $section");
    }
  }

  static IconData _setIcon(WebsiteSection section) {
    switch (section) {
      case WebsiteSection.title:
        return Icons.home;
      case WebsiteSection.aboutMe:
        return Icons.accessibility_new_sharp;
      case WebsiteSection.education:
        return Icons.account_balance_outlined;
      case WebsiteSection.experience:
        return Icons.work_outline_outlined;
      case WebsiteSection.basketballCareer:
        return Icons.sports_basketball;
      case WebsiteSection.trips:
        return Icons.airplanemode_active;
      case WebsiteSection.thoughtContent:
        return Icons.mic;
      default:
        throw FormatException("Section of website not recognized :: $section");
    }
  }
}
