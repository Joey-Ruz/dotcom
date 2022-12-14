import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/presenter/home_presenter.dart';
import 'package:personal_website/ui/home/presenter/home_presenter_output.dart';
import 'package:personal_website/ui/home/view/elements/menu_button.dart';
import 'package:personal_website/ui/home/view/sections/about_me_section.dart';
import 'package:personal_website/ui/home/view/sections/education_section.dart';
import 'package:personal_website/ui/home/view/sections/experience_section.dart';
import 'package:personal_website/ui/home/view/sections/title_section.dart';
import 'package:personal_website/ui/utils/bloc_stuff/bloc_builder_data.dart';
import 'package:personal_website/ui/utils/standard_widgets/standard_divider.dart';

import 'elements/bottom_info_widget.dart';

class HomeScene extends StatelessWidget {
  final HomePresenter presenter;

  HomeScene(this.presenter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilderData<HomePresenter, HomePresenterOutput>(
          bloc: presenter,
          builder: (context, data) {
            if (data is ShowModel) {
              return LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 940) {
                    return desktopScene(context);
                  } else {
                    return mobileScene(context);
                  }
                },
              );
            } else {
              assert(false, "unknown event $data");
              return Container();
            }
          }),
    );
  }

  Widget desktopScene(BuildContext context) {
    return Stack(
      children: [
        // Currently Bottommost element of stack (1/3)
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TitleSection(key: presenter.titleKey),
                StandardDivider(indent: 40, topPadding: 8, bottomPadding: 24),
                AboutMeSection(key: presenter.aboutMeKey),
                StandardDivider(),
                EducationSection(key: presenter.educationKey),
                StandardDivider(),
                ExperienceSection(key: presenter.experienceKey),
                SizedBox(height: 60),
              ],
            ),
          ),
        ),
        //
        //
        //
        // Currently Middle of Stack (2/3)
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MenuButton(
              presenter: presenter,
              homeContext: context,
            ),
          ),
        ),
        //
        //
        //
        // Currently Topmost element of stack (1/3)
        Align(
          alignment: AlignmentDirectional.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: BottomInfo(context: context),
          ),
        ),
      ],
    );
  }

  Widget mobileScene(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Mobile Scene"),
      ),
    );
  }
}
