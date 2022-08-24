import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorRepositoryProvider = Provider(
  (ref) => ColorRepository(),
);


class ColorRepository {
  final directOrder = [Colors.cyan, Colors.red];
  final revertOrder = [Colors.red, Colors.cyan];
}

// class ColorRepository2 extends ColorRepository {
//   final directOrder = [Colors.cyan, Colors.red];
//   final revertOrder = [Colors.red, Colors.cyan];
// }



