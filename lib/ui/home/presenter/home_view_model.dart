import 'package:equatable/equatable.dart';
import 'package:personal_website/ui/home/use_case/home_presentation_model.dart';
import 'package:personal_website/ui/utils/resources/enums.dart';

class HomeViewModel extends Equatable {
  final String? errorMessage;
  final MessageType? messageType;
  final bool isWaiting;
  final int subSceneIndex;

  HomeViewModel(
      {this.messageType,
      this.errorMessage,
      this.isWaiting = false,
      required this.subSceneIndex});

  HomeViewModel.fromPresentation(HomePresentationModel model)
      : errorMessage = model.errorMessage,
        messageType = model.messageType,
        isWaiting = model.isWaiting,
        subSceneIndex = model.subSceneIndex;

  @override
  List<Object?> get props => [
        messageType,
        errorMessage,
        isWaiting,
        subSceneIndex,
      ];
}
