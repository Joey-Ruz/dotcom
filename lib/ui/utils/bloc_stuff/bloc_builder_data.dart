import 'package:flutter/cupertino.dart';
import 'package:personal_website/ui/utils/standard_widgets/standard_full_screen_loading_indicator.dart';

import 'bloc.dart';
import 'bloc_builder.dart';

class BlocBuilderData<SomeBloc extends Bloc, BlocOutput>
    extends StatelessWidget {
  final SomeBloc bloc;
  final Widget Function(BuildContext, BlocOutput) builder;
  BlocBuilderData({required this.bloc, required this.builder});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SomeBloc, BlocOutput>(
        bloc: bloc,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return StandardFullScreenLoadingIndicator();
          }
          final data = snapshot.data;
          return builder(context, data!);
        });
  }
}
