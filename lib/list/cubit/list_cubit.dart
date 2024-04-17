import 'package:cubit_239/list/cubit/list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<ListState>{

  ListCubit() : super(ListState(mData: []));


  /// add
  void addNote(String title, String desc){

    var listData = state.mData;
    listData.add({
      "title" : title,
      "desc" : desc
    });

    emit(ListState(mData: listData));
  }

}