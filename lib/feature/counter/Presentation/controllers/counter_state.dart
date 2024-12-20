part of 'counter_bloc.dart';

class CounterState extends Equatable  {

  final int counterVal;

  const CounterState({required this.counterVal});

  CounterState copyWith ({int? counterVal }) {
    return CounterState (
        counterVal : counterVal ?? this.counterVal ,
    );
  }

  @override
  List<Object?> get props => [counterVal];
}



