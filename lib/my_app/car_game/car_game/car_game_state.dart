part of 'car_game_cubit.dart';

@freezed
class CarGameState with _$CarGameState {
  const factory CarGameState.initial({
    required double position,
  }) = _Initial;
}
