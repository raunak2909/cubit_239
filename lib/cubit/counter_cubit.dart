import 'dart:async';
import 'dart:math';

import 'package:cubit_239/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterState(count: 0)); ///initializing state value

  /// events

  void incrementCount(){
    emit(CounterState(count: state.count, isLoading: true));

    Timer(Duration(seconds: 5), (){
      var randNo = Random().nextInt(500);
      print(randNo);

      if(randNo%7==0){
        ///error
        emit(CounterState(count: state.count, isError: true));
      } else {
        emit(CounterState(count: state.count+1,));
      }

    });
  }

}