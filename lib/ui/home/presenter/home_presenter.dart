import 'package:personal_website/ui/home/router/home_router.dart';
import 'package:personal_website/ui/home/use_case/home_use_case.dart';
import 'package:personal_website/ui/home/use_case/home_use_case_output.dart';
import 'package:personal_website/ui/utils/bloc_stuff/starter_bloc.dart';

import 'home_presenter_output.dart';
import 'home_view_model.dart';

class HomePresenter extends StarterBloc<HomePresenterOutput> {
  HomeUseCase _useCase;
  HomeRouter _router;

  HomePresenter(this._useCase, this._router) {
    _useCase.stream.listen((event) {
      if (event is PresentModel) {
        streamAdd(
            ShowModel(HomeViewModel.fromPresentation(event.presentationModel)));
      } else {
        assert(false, "unknown event $event");
      }
    });
  }

  void eventEducationSelected() {
    _router.routeEducationSection();
  }

  void eventAthleticCareerSelected() {
    _router.routeAthleticCareerSection();
  }

  void eventPersonalInterestSelected() {
    _router.routerPersonalInterestsSection();
  }

  void eventWorkHistorySelected() {
    _router.routeWorkHistorySection();
  }

  @override
  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
