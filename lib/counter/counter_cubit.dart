import 'dart:math';

import 'package:flutter_application_3/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialState());

  int weight = 50;
  int height = 150;
  double bim = 0;
  String stat = '';

  void addweight() {
    weight++;
    emit(UpdateState());
  }

  void addheight() {
    height++;
    emit(UpdateState());
  }

  void removeweight() {
    weight--;
    emit(UpdateState());
  }

  void removeheight() {
    height--;
    emit(UpdateState());
  }

  String states(double res) {
    String category;

    switch (res) {
      case < 16:
        category = 'Severe Thinness';
        break;
      case < 18:
        category = 'Moderate Thinness';
        break;
      case < 18.5:
        category = 'Mild Thinness';
        break;
      case < 25:
        category = 'Normal';
        break;
      case < 30:
        category = 'Overweight';
        break;
      case < 35:
        category = 'Obese Class I';
        break;
      case < 40:
        category = 'Obese Class II';
        break;
      default:
        category = 'Obese Class III';
        break;
    }
    emit(UpdateState());
    return category;
  }

  void calc() {
    bim = weight / (pow(height / 100, 2));
    emit(UpdateState());
  }
}
