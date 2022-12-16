import 'package:equatable/equatable.dart';
import 'package:personal_website/ui/utils/resources/enums.dart';

class HomePresentationModel extends Equatable {
  final String? errorMessage;
  final MessageType? messageType;
  final bool isWaiting;
  final int subSceneIndex;

  HomePresentationModel({
    this.messageType,
    this.errorMessage,
    this.isWaiting = false,
    required this.subSceneIndex,
  });

  @override
  List<Object?> get props =>
      [messageType, errorMessage, isWaiting, subSceneIndex];
}
