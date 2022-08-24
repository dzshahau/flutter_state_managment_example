import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'game_manager.dart';

class GamePage extends ConsumerWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final gameState = ref.watch(gameManagerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Game page'),
      ),
      body: Row(
        children: [
          _getItem(gameState[0]),
          _getItem(gameState[1]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(gameManagerProvider.notifier).changeOrder();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget _getItem(Color color) {
    return Container(
      width: 150,
      height: 150,
      color: color,
    );
  }
}

