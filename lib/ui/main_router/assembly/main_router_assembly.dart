import 'package:personal_website/ui/main_router/presenter/main_router_presenter.dart';
import 'package:personal_website/ui/main_router/use_case/main_router_use_case.dart';
import 'package:personal_website/ui/main_router/view/main_router_scene.dart';

class MainRouterAssembly {
  final MainRouterScene scene;

  MainRouterAssembly._({required this.scene});

  factory MainRouterAssembly() {
    final useCase = MainRouterUseCase();
    final presenter = MainRouterPresenter(useCase);
    final scene = MainRouterScene(presenter);

    return MainRouterAssembly._(scene: scene);
  }
}
