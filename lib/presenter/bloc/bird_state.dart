part of 'bird_bloc.dart';

@immutable
abstract class BirdState {}

class BirdInitialState extends BirdState {}

class BirdJumplLoading extends BirdState {
  
}

class BirdJumpLoaded extends BirdState {}