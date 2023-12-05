import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/blocs/base_cubit.dart';

part 'car_game_state.dart';

part 'car_game_cubit.freezed.dart';

class CarGameCubit extends BaseCubit<CarGameState> {
  CarGameCubit({required super.context})
      : super(initialState: CarGameState.initial(position: 0.0));


  void moveCar(double newPosition) {
    emit(state.copyWith(position: newPosition));
  }

}
