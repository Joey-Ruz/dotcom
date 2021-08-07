import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/assembly/home_assembly.dart';
import 'package:personal_website/ui/main_router/presenter/main_router_presenter.dart';
import 'package:personal_website/ui/main_router/presenter/main_router_presenter_output.dart';
import 'package:personal_website/ui/utils/bloc_stuff/bloc_builder_data.dart';
import 'package:personal_website/ui/utils/resources/constants.dart';

class MainRouterScene extends StatelessWidget {
  final MainRouterPresenter presenter;

  MainRouterScene(this.presenter);

  @override
  Widget build(BuildContext context) {
    return BlocBuilderData<MainRouterPresenter, MainRouterPresenterOutput>(
        bloc: presenter,
        builder: (context, snapshot) {
          return AnimatedSwitcher(
            duration: Constants.pageTransitionDuration,
            child: _childFromData(snapshot),
          );
        });
  }

  // ignore: missing_return
  Widget? _childFromData(MainRouterPresenterOutput data) {
    switch (data.runtimeType) {
      case ShowHome:
        return HomeAssembly(presenter).scene;
      default:
        assert(false, 'Invalid route: ${data.runtimeType}');
    }
  }
}
