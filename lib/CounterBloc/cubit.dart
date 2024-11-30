
import 'package:flutter00/CounterBloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  int counter = 0;

  CounterCubit() :super(initalState());

  static CounterCubit get(context) => BlocProvider.of(context);
  void plus() {
    counter ++;
    emit(increamentCounter());
  }

  void minus() {
    counter--;
    emit(decreamentCounter());
  }

  void onPress(String operator) {
    if (operator == "+") {
      counter++;
      emit(increamentCounter());
    }
    else {
      counter--;
      emit(decreamentCounter());
    }
  }
}