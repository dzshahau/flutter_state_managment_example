import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';

// final counterControllerProvider = StateNotifierProvider<CounterController, int>(
//       (ref) => CounterController(),
// );

// final counterControllerProvider = StateNotifierProvider.autoDispose<CounterController, int>(
//   (ref) => CounterController(),
// );

final counterControllerProvider = ChangeNotifierProvider((ref) => CounterController());


//final counterControllerProvider = Provider((_) => CounterController());

class CounterController extends ChangeNotifier {
  CounterController();

  int _state = 0;

  void increment() {
    // //final newState = state + 1;
    // state = newState;
    _state ++;
    notifyListeners();

  }
}
