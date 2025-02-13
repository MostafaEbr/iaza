import 'package:bloc/bloc.dart';
import 'package:investment/features/splash/presentation/cubit/splash_states.dart';


class SplashCubit extends Cubit<SplashStates> {
  SplashCubit() : super(SplashStates.initial());

  void loadSplash() async {
    emit(SplashStates.splashLoading());
    await Future.delayed(const Duration(seconds: 3));
    emit(SplashStates.splashSuccess(""));

  }
}
