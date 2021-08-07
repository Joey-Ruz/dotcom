import 'package:equatable/equatable.dart';
import 'package:personal_website/ui/home/use_case/home_presentation_model.dart';

abstract class HomeUseCaseOutput extends Equatable {}

class PresentModel extends HomeUseCaseOutput {
  final HomePresentationModel presentationModel;
  PresentModel(this.presentationModel);

  @override
  List<Object> get props => [presentationModel];
}
