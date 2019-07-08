
import 'package:bloc/bloc.dart';
import 'package:bloc_counter_app/bloc/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int currentState, CounterEvent event) async* {
    switch(event) {
      case CounterEvent.increment:
        yield currentState + 1;
        break;

      case CounterEvent.decrement:
        yield currentState - 1;
        break;
    }
  }


}