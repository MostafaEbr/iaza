import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/network/models/api_error_model.dart';

part 'app_manager_state.freezed.dart';

@freezed
class AppMangerState with _$AppMangerState {
  const factory AppMangerState.initial() = _Initial;
  const factory AppMangerState.changeTheme() = ChangeTheme;
  const factory AppMangerState.loading() = ChangeLanguageLoading;
  const factory AppMangerState.success() = ChangeLanguageSucces;
  const factory AppMangerState.error(ApiErrorModel error) = ChangeLanguageError;
}
