import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(bloc, error, stackTrace);
  }
}

enum TapCounterEvent { first_page, second_page, third_page }

class TapCountBloc extends Bloc<TapCounterEvent, dynamic> {
  TapCountBloc() : super(0);

  @override
  Stream<dynamic> mapEventToState(TapCounterEvent event) async* {
    switch (event) {

      case TapCounterEvent.first_page:
      // TODO: Handle this case.
      // yield gameName = "AliasFirstMode";
        break;
      case TapCounterEvent.second_page:
      // TODO: Handle this case.
        break;
      case TapCounterEvent.third_page:
      // TODO: Handle this case.
        break;
    }
  }
}