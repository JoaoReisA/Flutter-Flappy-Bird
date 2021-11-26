part of 'bird_bloc.dart';

@immutable
abstract class BirdEvent {}


class GetEventJump extends BirdEvent {
  double time = 0;


}
