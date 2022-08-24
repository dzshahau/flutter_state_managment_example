import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment_example/provider_page/providers/counter_provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text(
          '${context.watch<CounterProvider>().count}',
          style: Theme.of(context).textTheme.headline4,
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
    context.read<CounterProvider>().increment();
  }
}
