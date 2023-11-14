import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/presenter/home_presenter.dart';
import 'package:personal_website/ui/home/presenter/home_presenter_output.dart';
import 'package:personal_website/ui/home/presenter/home_view_model.dart';
import 'package:personal_website/ui/home/view/elements/menu_button.dart';
import 'package:personal_website/ui/home/view/elements/software_intro.dart';
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
              final viewModel = data.viewModel;
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TitleSection(
                            key: presenter.titleKey,
                            sectionOnTap: (index) =>
                                presenter.sectionOnTap(index),
                            selectedIndex: viewModel.subSceneIndex,
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              if (constraints.maxWidth > 940) {
                                return _subScene(viewModel.subSceneIndex);
                                // return AnimatedSwitcher(
                                //   duration: Duration(milliseconds: 800),
                                //   switchInCurve: Curves.easeInOut,
                                //   switchOutCurve: Curves.easeOut,
                                //   child: _subScene(viewModel.subSceneIndex),
                                // );
                              } else {
                                return mobileScene(context, viewModel);
                              }
                            },
                          ),
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
            } else {
              assert(false, "unknown event $data");
              return Container();
            }
          }),
    );
  }

  Widget _subScene(int index) {
    return index == 0
        ? SoftwareSubScene(presenter: presenter)
        : PersonalSubScene(presenter: presenter);
  }

  Widget mobileScene(BuildContext context, HomeViewModel viewModel) {
    return Center(
      child: Container(
        child: Text("Mobile Scene"),
      ),
    );
  }
}

class SoftwareSubScene extends StatelessWidget {
  final HomePresenter presenter;
  const SoftwareSubScene({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SoftwareIntro(),
        StandardDivider(topPadding: 50, bottomPadding: 50),
        //TODO: Add Personal Projects section

        //TODO: Update Experience to match Resume & add Afero section
        //      allow for click to download pdf of Resume
        ExperienceSection(key: presenter.experienceKey),
        StandardDivider(),
        EducationSection(key: presenter.educationKey),
        SizedBox(height: 60.0),
      ],
    );
  }
}

class PersonalSubScene extends StatelessWidget {
  final HomePresenter presenter;

  const PersonalSubScene({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AboutMeSection(key: presenter.aboutMeKey),
        StandardDivider(),
      ],
    );
  }
}
