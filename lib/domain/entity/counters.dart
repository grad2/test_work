import 'package:freezed_annotation/freezed_annotation.dart';

part 'counters.freezed.dart';

@freezed
class Counters with _$Counters{
  const factory Counters({
    required int one,
    required int two,
    required int three,

  }) = _Counters;

  const Counters._();

}
