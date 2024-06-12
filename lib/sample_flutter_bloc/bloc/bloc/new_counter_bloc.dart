import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_counter_event.dart';
part 'new_counter_state.dart';

class NewCounterBloc extends Bloc<NewCounterEvent, NewCounterState> {
  int value = 0;
  NewCounterBloc() : super(NewCounterSuccess(0)) {
    on<IncrementEvent>((event, emit) async {//async
      emit(NewCounterLoading());
      await Future.delayed(const Duration(seconds: 3));
      value++;
      if (value == -10){//
        emit(NewCounterFailure('This number is not allowed'));//
      }else{//
      emit(NewCounterSuccess(value));
      }//
    });

    on<DecrementEvent>((event, emit) {
      emit(NewCounterLoading());
      value--;
      if (value == -10){//
        emit(NewCounterFailure('This number is not allowed'));//
      }else{//
      emit(NewCounterSuccess(value));
      }//
    });
  }
}

// on<IncrementEvent>((event, emit) {
//       emit(NewCounterLoading());
//       value++;
//       emit(NewCounterSuccess(value));
//     });

// on<DecrementEvent>((event, emit) {
//       emit(NewCounterLoading());
//       value--;
//       emit(NewCounterSuccess(value));
//     });