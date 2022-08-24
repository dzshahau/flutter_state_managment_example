import 'package:state_managment_example/redux_page/redux/page_action.dart';
import 'package:redux/redux.dart';

// int counterReducer(int state, dynamic action) {
//   if (action == PageAction.increment) {
//     return state + 1;
//   }
//   return state;
// }

final counterReducer = combineReducers<int>([
  TypedReducer<int, PageAction>((state, action) => _increment(state, action)),
]);

int _increment(int state, PageAction action) {
  return state + 1;
}
