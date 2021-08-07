import 'package:equatable/equatable.dart';
import 'package:personal_website/ui/home/presenter/home_view_model.dart';

abstract class HomePresenterOutput extends Equatable {}

class ShowModel extends HomePresenterOutput {
  final HomeViewModel viewModel;
  ShowModel(this.viewModel);

  @override
  List<Object> get props => [viewModel];
}
