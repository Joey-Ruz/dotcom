import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/presenter/home_presenter.dart';
import 'package:personal_website/ui/utils/resources/Strings.dart';

class MenuButton extends StatelessWidget {
  final HomePresenter presenter;

  MenuButton({required this.presenter});

  @override
  Widget build(BuildContext context) {
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

  static const List<Choice> choices = const <Choice>[
    const Choice(
        title: Strings.education, icon: Icons.account_balance_outlined),
    const Choice(title: Strings.workHistory, icon: Icons.work_outline_outlined),
    const Choice(
        title: Strings.personalInterests, icon: Icons.accessibility_new_sharp),
    const Choice(title: Strings.athleticCareer, icon: Icons.sports_basketball),
  ];

  void _handleClick(Choice choice) {
    switch (choice.title) {
      case Strings.education:
        presenter.eventEducationSelected();
        break;
      case Strings.personalInterests:
        presenter.eventPersonalInterestSelected();
        break;
      case Strings.workHistory:
        presenter.eventWorkHistorySelected();
        break;
      case Strings.athleticCareer:
        presenter.eventAthleticCareerSelected();
        break;
      default:
        break;
    }
  }
}

class Choice {
  final String title;
  final IconData icon;

  const Choice({required this.title, required this.icon});
}
