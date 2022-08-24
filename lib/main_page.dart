import 'package:flutter/material.dart';
import 'package:state_managment_example/bloc_page/block_page.dart';
import 'package:state_managment_example/provider_page/provider_page.dart';
import 'package:state_managment_example/redux_page/redux_page.dart';
import 'package:state_managment_example/riverpod_page/riverpod_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Managment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                _openPage(context, const ProviderPage());
              },
              child: const Text('Provider example'),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                _openPage(context, const RiverpodPage());
              },
              child: const Text('Riverpod example'),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                _openPage(context, const BlockPage());
              },
              child: const Text('Bloc example'),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                _openPage(context, ReduxPage());
              },
              child: const Text('Redux example'),
            ),
          ],
        ),
      ),
    );
  }

  void _openPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
