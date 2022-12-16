import 'package:personal_website/ui/home/presenter/home_presenter.dart';
import 'package:personal_website/ui/home/router/home_router.dart';
import 'package:personal_website/ui/home/use_case/home_use_case.dart';
import 'package:personal_website/ui/home/view/home_scene.dart';

class HomeAssembly {
  final HomeScene scene;

  HomeAssembly._({required this.scene});

  factory HomeAssembly(HomeRouter router) {
    final useCase = HomeUseCase();
    final presenter = HomePresenter(useCase);
    final scene = HomeScene(presenter);

    return HomeAssembly._(scene: scene);
  }
}
