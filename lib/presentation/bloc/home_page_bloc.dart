import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:untitled9/domain/entity/counters.dart';
import 'package:untitled9/presentation/model/count.dart';

class HomePageBloc {
  
  final BehaviorSubject<Counters> _countersSubject;

  Counters get getCounters => _countersSubject.value;

  Stream<Counters> get watchCounters => _countersSubject.stream;

  HomePageBloc({
    Counters? count
  }) :
        _countersSubject = BehaviorSubject.seeded(count ?? const Counters(three: 0, two: 0, one: 0));


  void addCount(Count count) {
    switch (count) {
      case Count.one:
        return _countersSubject.add(_countersSubject.value.copyWith(one: _countersSubject.value.one + 1));
      case Count.two:
        return _countersSubject.add(_countersSubject.value.copyWith(two: _countersSubject.value.two + 1));
      default:
        return _countersSubject.add(_countersSubject.value.copyWith(three: _countersSubject.value.three + 1));
    }
  }

  dispose() {
    _countersSubject.close();
  }
}

class CountersArguments {
  final Counters counters;

  CountersArguments({required this.counters});
}
