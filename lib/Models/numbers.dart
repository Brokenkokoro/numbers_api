import 'package:freezed_annotation/freezed_annotation.dart';

part 'numbers.freezed.dart';
part 'numbers.g.dart';

@freezed
class Numbers with _$Numbers {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Numbers({
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'description') String? description,
  }) = _Numbers;

  factory Numbers.fromJson(Map<String, dynamic> json) =>
      _$NumbersFromJson(json);
}
