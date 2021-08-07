import 'package:personal_website/ui/utils/bloc_stuff/starter_bloc.dart';

import 'main_router_use_case_output.dart';

class MainRouterUseCase extends StarterBloc<MainRouterUseCaseOutput> {
  MainRouterUseCase() {
    initialize();
  }

  Future<void> initialize() async {
    eventHome();
  }

  void eventHome() {
    streamAdd(PresentHome());
  }
}
