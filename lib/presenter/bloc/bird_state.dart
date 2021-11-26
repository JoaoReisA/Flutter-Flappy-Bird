part of 'bird_bloc.dart';

@immutable
abstract class BirdState {}

class BirdInitialState extends BirdState {}

class BirdJumplLoading extends BirdState {}

class BirdJumpLoaded extends BirdState {
  final time;
  final initialHeight;

  BirdJumpLoaded({required this.time, required this.initialHeight});
  
}
