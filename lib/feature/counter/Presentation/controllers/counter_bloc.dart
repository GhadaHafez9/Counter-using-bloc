import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counterVal: 0)) {
    on<CounterIncrement>(onCounterIncrement);
    on<CounterDecrement>(onCounterDecrement);
    on<CounterReset>(onCounterReset);
  }

  void onCounterIncrement(CounterIncrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(counterVal: state.counterVal + 1));
  }

  void onCounterDecrement(CounterDecrement event, Emitter<CounterState> emit) {
    emit(state.copyWith(counterVal: state.counterVal - 1));
  }

  void onCounterReset(CounterReset event, Emitter<CounterState> emit) {
    emit(state.copyWith(counterVal: 0));
  }
// on<CounterIncrement>((event, emit) {
//   emit(state.copyWith(counterVal : state.counterVal + 1));
// });
//
// on<CounterDecrement>((event, emit) {
//   emit(state.copyWith(counterVal: state.counterVal - 1));
// });
//
// on<CounterReset>((event, emit) {
//   emit(state.copyWith(counterVal: 0));
// });
}
