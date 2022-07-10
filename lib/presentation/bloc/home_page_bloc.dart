import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:untitled9/domain/entity/counters.dart';
import 'package:untitled9/presentation/model/count.dart';

class HomePageBloc {
  
  final BehaviorSubject<Counters> countSubject;

  Counters get getCount => countSubject.value;

  Stream<Counters> get watchCount => countSubject.stream;

  HomePageBloc({
    Counters? count
  }) :
        countSubject = BehaviorSubject.seeded(count ?? const Counters(three: 0, two: 0, one: 0));


  void addCount(Count count) {
    switch (count) {
      case Count.one:
        return countSubject.add(countSubject.value.copyWith(one: countSubject.value.one + 1));
      case Count.two:
        return countSubject.add(countSubject.value.copyWith(two: countSubject.value.two + 1));
      default:
        return countSubject.add(countSubject.value.copyWith(three: countSubject.value.three + 1));
    }
  }

  dispose() {
    countSubject.close();
  }
}

class CountersArguments {
  final Counters counters;

  CountersArguments({required this.counters});
}
