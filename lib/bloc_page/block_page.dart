import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment_example/bloc_page/block/block_state.dart';
import 'package:state_managment_example/bloc_page/block/model.dart';

import 'block/block_event.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: BlocBuilder<BlocModel, BlockState>(
          builder: (context, state) {
            return Text(
              '${(state as ResultState).result}',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increment(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _increment(BuildContext context) {
    //BlocProvider.of<BlocModel>(context).add(IncrementEvent());
    context.read<BlocModel>().add(IncrementEvent());
  }
}
