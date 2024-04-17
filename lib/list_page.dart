import 'package:cubit_239/list/cubit/list_cubit.dart';
import 'package:cubit_239/list/cubit/list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Notes'),
      ),
      body: Stack(
        children: [

        ],
      ),
      persistentFooterButtons: [],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<ListCubit>().addNote("My Note title", "My desc");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
