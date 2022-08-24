import 'package:state_managment_example/bloc_page/block/block_event.dart';
import 'package:state_managment_example/bloc_page/block/block_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocModel extends Bloc<BlockEvent, BlockState> {
  BlocModel() : super(ResultState(0)) {
    on<IncrementEvent>((event, emit) {
      final currentResult = state as ResultState;
      emit(ResultState(currentResult.result + 1));
    });
  }
}
