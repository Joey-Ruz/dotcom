import 'package:personal_website/ui/home/router/home_router.dart';
import 'package:personal_website/ui/main_router/use_case/main_router_use_case.dart';
import 'package:personal_website/ui/main_router/use_case/main_router_use_case_output.dart';
import 'package:personal_website/ui/utils/bloc_stuff/starter_bloc.dart';

import 'main_router_presenter_output.dart';

class MainRouterPresenter extends StarterBloc<MainRouterPresenterOutput>
    implements HomeRouter {
  MainRouterUseCase _useCase;

  MainRouterPresenter(this._useCase) {
    _useCase.stream.listen((event) {
      if (event is PresentHome) {
        streamAdd(ShowHome());
      } else {
        assert(false, "unknown event $event");
        return null;
      }
    });
  }

  @override
  void dispose() {
    _useCase.dispose();
    super.dispose();
  }
}
