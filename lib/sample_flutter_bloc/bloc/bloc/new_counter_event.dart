part of 'new_counter_bloc.dart';

@immutable
sealed class NewCounterEvent {}

class IncrementEvent extends NewCounterEvent {}
class DecrementEvent extends NewCounterEvent {}
