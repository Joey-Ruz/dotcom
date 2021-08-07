import 'package:personal_website/ui/utils/bloc_stuff/starter_bloc.dart';
import 'package:personal_website/ui/utils/resources/enums.dart';

import 'home_presentation_model.dart';
import 'home_use_case_output.dart';

class HomeUseCase extends StarterBloc<HomeUseCaseOutput> {
  HomeUseCase() {
    initialize();
  }

  Future<void> initialize() async {
    _refreshPresentation();
  }

  void _refreshPresentation(
      {bool wait = false, String? errorMessage, MessageType? messageType}) {
    streamAdd(PresentModel(HomePresentationModel(
      isWaiting: wait,
      errorMessage: errorMessage,
      messageType: messageType,
    )));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
