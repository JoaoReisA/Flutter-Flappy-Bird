import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bird_event.dart';
part 'bird_state.dart';

class BirdBloc extends Bloc<BirdEvent, BirdState> {
  BirdBloc() : super(BirdInitialState()) {
    on<GetEventJump>((event, emit) {
      emit(BirdJumplLoading());

      emit(BirdJumpLoaded());
    });
  }
}
