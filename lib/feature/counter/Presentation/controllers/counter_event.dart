part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class CounterIncrement extends CounterEvent {}

final class CounterDecrement extends CounterEvent {}

final class CounterReset extends CounterEvent {}



