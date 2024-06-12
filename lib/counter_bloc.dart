import 'dart:async';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}
class DecrementEvent extends CounterEvent {}

class CounterBloc {
  int _value = 0;

  //event stream controller//
  final StreamController<CounterEvent> _eventController = StreamController<CounterEvent>();

  //sink events
  StreamSink<CounterEvent> get sinkEvent => _eventController.sink;

  // stream event
  Stream<CounterEvent> get streamEvent => _eventController.stream;

  // state stream controller //
  final StreamController<int> _stateController = StreamController<int>();

  //sink state
  StreamSink<int> get sinkState => _stateController.sink;

  //stream state
  Stream<int> get streamState => _stateController.stream;

  // 
  void mapEventToState(CounterEvent event){
    if(event is IncrementEvent){
      _value++;
    }else {
      _value--;
    }
    sinkState.add(_value);
  }

  CounterBloc(){
    streamEvent.listen((event){
      mapEventToState(event);
    });
  }

  void dispose(){ //dispose untuk mengakhiri stream
    _eventController.close();
    _stateController.close();
  }
}