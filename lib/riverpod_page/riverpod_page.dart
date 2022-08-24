import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_managment_example/riverpod_page/controllers/counter_controller.dart';

class RiverpodPage extends ConsumerWidget {
  const RiverpodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
          child: Text(
        '${ref.watch(counterControllerProvider)}',
        style: Theme.of(context).textTheme.headline4,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increment(ref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _increment(WidgetRef ref) {
    ref.read(counterControllerProvider).increment();
  }
}
