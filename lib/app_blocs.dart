import 'package:bloc_basics/app_events.dart';
import 'package:bloc_basics/app_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class appblocs extends Bloc<appevents, appstates> {
  // now when we call appbloc , appbloc will call initstates class (app_states),
  // and initstate class will call appstates class and counter var will initialize,
  //hence flow is connected
  appblocs() : super(initstates()) {
    //......super const block
// now  we need to register our events to our bloc
// we do that by expanding the super constructor block only .
    on<incrementevent>((event, emit) {
      emit(appstates(
        counter: state.counter + 1));
    });

    on<decrementevent>((event, emit) {
      emit(appstates(counter: state.counter - 1));
    });
  } //......super const block
}
