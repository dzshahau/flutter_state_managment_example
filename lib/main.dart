import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_managment_example/bloc_page/block/model.dart';
import 'package:state_managment_example/game_page/game_page.dart';
import 'package:state_managment_example/login_page/login_page.dart';

import 'package:state_managment_example/main_page.dart';
import 'package:state_managment_example/provider_page/provider_page.dart';
import 'package:state_managment_example/provider_page/providers/counter_provider.dart';
import 'package:state_managment_example/redux_page/redux/counter_reducer.dart';
import 'package:state_managment_example/redux_page/redux_page.dart';
import 'package:state_managment_example/riverpod_page/riverpod_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart' as provider;
import 'package:redux/redux.dart';

// void main() {
//   runApp(
//     provider.MultiProvider(
//       providers: [
//         provider.ChangeNotifierProvider(
//           create: (_) => CounterProvider(),
//         )
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

// void main() {
//   runApp(
//     MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (_) => BlocModel(),
//         ),
//       ],
//       child: const MyApp(),
//     ),
//   );
// }

// void main() {
//   final counterStore = Store<int>(counterReducer, initialState: 0);
//   runApp(MyApp(store: counterStore,));
// }

class MyApp extends StatelessWidget {
  //final Store<int> store;
  const MyApp({/*required this.store,*/ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const ProviderPage(),
      home: const LoginPage(),
    );
  }
}
