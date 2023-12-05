import 'package:chat_app/slider/slider_controller.dart';
import 'package:chat_app/slider/slider_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../core/widgets/base_stateless_widget.dart';
import '../my_app/themes/app_colors.dart';
import '../my_app/themes/edge_insets.dart';
import '../my_app/themes/slider_shape.dart';

class SliderWidget extends BaseStatelessWidget<SliderController, SliderCubit, SliderState> {
  const SliderWidget({super.key});

  // Function(double) onValueChanged;

  // double value;

  // SliderWidget(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SliderCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<SliderCubit, SliderState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(),
            body: Container(
              margin: edge_insets_t_170,
              child: Column(
                children: [
                  Text(state.value.toStringAsFixed(2)),
                  SfSlider(
                    value: state.value,
                    max: 10,
                    trackShape: SliderShape(),
                    // min: 1,
                    onChanged: (value) {
                      getCubit(context).updateState(value);
                      // state.value=value;
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  SliderCubit createCubitAndAssignToController(BuildContext context) {
    SliderCubit sliderCubit = SliderCubit();
    controller?.cubit = sliderCubit;
    return sliderCubit;
  }
}
