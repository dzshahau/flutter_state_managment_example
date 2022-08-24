import 'package:flutter/material.dart';
import 'package:state_managment_example/redux_page/redux/page_action.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class ReduxPage extends StatelessWidget {
  ReduxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: StoreConnector<int, String>(
          converter: (Store<int> store) => store.state.toString(),
          builder: (context, String value) {
            return Text(
              value,
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: StoreConnector<int, VoidCallback>(
        converter: (store) {
          return () => store.dispatch(PageAction.increment);
        },
        builder: (context, callback) {
          return FloatingActionButton(
            onPressed: callback,
            child: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
