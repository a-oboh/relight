import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_status.freezed.dart';

@freezed
class BaseStatus with _$BaseStatus {
  const factory BaseStatus.initial() = _InitalBaseStatus;

  const factory BaseStatus.loading() = _LoadingBaseStatus;

  const factory BaseStatus.error({String? errorText}) = _ErrorBaseStatus;
}
