import 'package:flutter/widgets.dart';

import 'bloc.dart';
import 'bloc_provider.dart';

class BlocBuilder<SomeBloc extends Bloc, BlocOutput> extends StatelessWidget {
  final Bloc bloc;
  final AsyncWidgetBuilder<BlocOutput> builder;
  BlocBuilder({required this.bloc, required this.builder});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SomeBloc>(
        bloc: bloc as SomeBloc,
        child: StreamBuilder<BlocOutput>(
            stream: bloc.stream.cast(), builder: builder));
  }
}
