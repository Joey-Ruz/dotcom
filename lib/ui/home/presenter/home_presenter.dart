import 'package:flutter/material.dart';
import 'package:personal_website/ui/home/use_case/home_use_case.dart';
import 'package:personal_website/ui/home/use_case/home_use_case_output.dart';
import 'package:personal_website/ui/utils/bloc_stuff/starter_bloc.dart';

import 'home_presenter_output.dart';
import 'home_view_model.dart';

class HomePresenter extends StarterBloc<HomePresenterOutput> {
  HomeUseCase _useCase;
  final titleKey = new GlobalKey();
  final aboutMeKey = new GlobalKey();
  final educationKey = new GlobalKey();
  final experienceKey = new GlobalKey();
  final tripsKey = new GlobalKey();
  final basketballKey = new GlobalKey();
  final thoughtsKey = new GlobalKey();

  HomePresenter(this._useCase) {
    _useCase.stream.listen((event) {
      if (event is PresentModel) {
        streamAdd(
            ShowModel(HomeViewModel.fromPresentation(event.presentationModel)));
      } else {
        assert(false, "unknown event $event");
      }
    });
  }

  void sectionOnTap(index) {
    _useCase.sectionOnTap(index);
  }

  @override
  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
