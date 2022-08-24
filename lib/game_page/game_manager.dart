import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'color_repository.dart';

final gameManagerProvider = StateNotifierProvider<GameManager, List<Color>>(
  (ref) {
    final repo = ref.read(colorRepositoryProvider);
    return GameManager(colorRepository: repo, colors: repo.directOrder);
  },
);

class GameManager extends StateNotifier<List<Color>> {
  final ColorRepository colorRepository;

  GameManager({
    required this.colorRepository,
    required List<Color> colors,
  }) : super(colors);

  void changeOrder() {
    state = state == colorRepository.directOrder
        ? colorRepository.revertOrder
        : colorRepository.directOrder;
  }
}
