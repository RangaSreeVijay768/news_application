import 'package:chat_app/tracker_notification_toggle_btn_widget/tracker_notification_toggle_btn_widget_controller.dart';
import 'package:chat_app/tracker_notification_toggle_btn_widget/tracker_notification_toggle_btn_widget_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../core/widgets/base_stateless_widget.dart';
import '../my_app/themes/app_colors.dart';
import '../my_app/themes/slider_shape.dart';


class TrackerNotificationToggleBtnWidget extends BaseStatelessWidget<TrackerNotificationToggleBtnWidgetController, TrackerNotificationToggleBtnWidgetCubit, TrackerNotificationToggleBtnWidgetState>{
  const TrackerNotificationToggleBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TrackerNotificationToggleBtnWidgetCubit>(
        create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<TrackerNotificationToggleBtnWidgetCubit, TrackerNotificationToggleBtnWidgetState>(
        listener: (context, state){},
        builder: (context, state){
          return Theme(
              data: ThemeData(
                brightness: state.isLightModeEnabled ? Brightness.light : Brightness.dark,
              ),
              child: Scaffold(
                  body: Center(
                      child: Theme(
                        data: ThemeData(useMaterial3: true),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Switch(
                              activeTrackColor: AppColors.textHeading,
                              // overlayColor: overlayColor,
                              // trackColor: trackColor,
                              thumbColor: state.isLightModeEnabled ? const MaterialStatePropertyAll<Color>(Colors.white) : const MaterialStatePropertyAll<Color>(Colors.black),
                              value: state.isLightModeEnabled,
                              onChanged: (isEnabled) {
                                context.read<TrackerNotificationToggleBtnWidgetCubit>().toggleDarkMode(isEnabled);
                              },
                            ),
                            Text(
                              state.brightnessValue.toStringAsFixed(1),
                            ),
                            SfSlider(
                              trackShape: SliderShape(),
                              value: state.brightnessValue,
                              max: 10,
                              // min: 1,
                              onChanged: (value) {
                                getCubit(context).updateBrightnessValue(value);
                                // state.value=value;
                              },
                            ),
                          ],
                        ),
                      )
                  )
              )
          );
        },
      ),
    );
  }

  @override
  TrackerNotificationToggleBtnWidgetCubit createCubitAndAssignToController(BuildContext context) {
    TrackerNotificationToggleBtnWidgetCubit trackerNotificationToggleBtnWidgetCubit =
        TrackerNotificationToggleBtnWidgetCubit();
    controller?.cubit = trackerNotificationToggleBtnWidgetCubit;
    return trackerNotificationToggleBtnWidgetCubit;
  }

}


