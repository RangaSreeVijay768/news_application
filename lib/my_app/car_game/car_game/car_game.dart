import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/base_stateless_widget.dart';

import 'car_game_controller.dart';
import 'car_game_cubit.dart';


class CarGame
    extends BaseStatelessWidget<CarGameController, CarGameCubit, CarGameState> {

  CarGame({Key? key, super.controller, super.onStateChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CarGameCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CarGameCubit, CarGameState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Car Position: ${state.position.toStringAsFixed(2)}'),
                  ElevatedButton(
                    onPressed: () {
                      getCubit(context).moveCar(state.position + 10.0);
                    },
                    child: const Text('Move Car'),
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
  CarGameCubit createCubitAndAssignToController(BuildContext context) {
    CarGameCubit cubit = CarGameCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }

}
