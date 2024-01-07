import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_status.freezed.dart';

@freezed
class BaseStatus with _$BaseStatus {
  const factory BaseStatus.initial() = InitialBaseStatus;

  const factory BaseStatus.loading() = LoadingBaseStatus;

  const factory BaseStatus.error({String? errorText, Exception? exception}) =
      ErrorBaseStatus;
}

extension StatusX on BaseStatus {
  bool get isLoading => this is LoadingBaseStatus;
}
