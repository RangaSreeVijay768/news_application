import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracker_notification_toggle_btn_widget_state.dart';
part 'tracker_notification_toggle_btn_widget_cubit.freezed.dart';


class TrackerNotificationToggleBtnWidgetCubit extends Cubit<TrackerNotificationToggleBtnWidgetState> {
  TrackerNotificationToggleBtnWidgetCubit() : super(const TrackerNotificationToggleBtnWidgetState(brightnessValue: 0.5, isLightModeEnabled: true));

  void updateBrightnessValue(double value) {
    emit(state.copyWith(brightnessValue: value));
  }

  void toggleDarkMode(bool isEnabled) {
    emit(state.copyWith(isLightModeEnabled: isEnabled));
  }


// void toggleTheme() {
  //   emit(state is On ? const TrackerNotificationToggleBtnWidgetState.on() : const TrackerNotificationToggleBtnWidgetState.off());
  // }


  // toggleState(value) {
  //   emit(state.copyWith(value: value));
  // }
  // void toggle() {
  //   emit(state.when(
  //     initial: (value) => const TrackerNotificationToggleBtnWidgetState.on(),
  //     on: () => const TrackerNotificationToggleBtnWidgetState.off(),
  //     off: () => const TrackerNotificationToggleBtnWidgetState.on(),
  //   ));
  // }
  //
  // ThemeData currentThemeData() {
  //   return state.when(
  //     on: () => ThemeData.light(),
  //     off: () => ThemeData.dark(),
  //     initial: (value) => ThemeData.light()
  //   );
  // }
  //
  // void updateState(double sliderValue) {
  //   emit(state.);
  // }

}
