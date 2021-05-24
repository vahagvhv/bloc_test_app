import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_test_app/pages/HomePage.dart';


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

enum TapCounterEvent{first_page, second_page, third_page}

class TapCountBloc extends Bloc<dynamic, TapCountBloc>{
  @override
  // TODO: implement initialState
  TapCountBloc get initialState => throw UnimplementedError();

  @override
  Stream<TapCountBloc> mapEventToState(dynamic event) {
   if(count == 1){
    TapCounterEvent.first_page;
   }
   else if(count == 2){
     TapCounterEvent.second_page;
   }
   else{
     TapCounterEvent.third_page;
   }

  }

  TapCountBloc() : super(TapCountBloc());
}

