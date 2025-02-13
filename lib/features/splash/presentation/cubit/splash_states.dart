
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_states.freezed.dart';

@freezed
class SplashStates<T> with _$SplashStates<T> {
  const factory SplashStates.initial() = _Initial;


  const factory SplashStates.splashLoading() = SplashLoading;
  const factory SplashStates.splashSuccess(T data) = SplashSuccess<T>;
  const factory SplashStates.splashError({required String error}) = SplashError;

}