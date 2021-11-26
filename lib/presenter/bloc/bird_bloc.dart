import 'package:app/domain/usecase/bird_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bird_event.dart';
part 'bird_state.dart';

class BirdBloc extends Bloc<BirdEvent, BirdState> {
  final BirdUsecase usecase;
  BirdBloc({required this.usecase}) : super(BirdInitialState()) {
    on<GetEventJump>((event, emit) {
      emit(BirdJumplLoading());
      final jumpInfos = usecase.jump();
      emit(BirdJumpLoaded(time: jumpInfos[0], initialHeight: jumpInfos[1]));
    });
  }
}
