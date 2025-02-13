import 'package:bloc/bloc.dart';
import '../../config/router/app_router.dart';
import '../../features/settings/data/data_source/language_support.dart';
import '../../features/settings/domain/entities/language_entity.dart';
import '../local_storage/cache_helper.dart';
import 'app_manager_state.dart';
import 'dart:io';

class AppMangerCubit extends Cubit<AppMangerState> {
  AppMangerCubit() : super(const AppMangerState.initial());

  LanguageSupportModel languageCurrent = returnLanguageSupportModel(AppRouter.rootNavigatorKey.currentContext).first;

  void initLanguage() async {
    emit(const AppMangerState.loading());

    LanguageSupportModel language;
    String? oldLanguage = getLanguage();
    if (oldLanguage == null || oldLanguage.isEmpty) {
      final String defaultLocale =
          Platform.localeName; // Returns locale string in the form 'en_US'
      // Split the locale string by the underscore character
      final List<String> localeParts = defaultLocale.split('_');
      // Extract the language code
      final String languageCode = localeParts[0]; // e.g., 'en'
      language =
          returnLanguageSupportModel(AppRouter.rootNavigatorKey.currentContext)
              .firstWhere((element) => element.code == languageCode,
                  orElse: () => returnLanguageSupportModel(AppRouter.rootNavigatorKey.currentContext).first);
    } else {
      language =
          returnLanguageSupportModel(AppRouter.rootNavigatorKey.currentContext)
              .firstWhere((element) => element.code == oldLanguage,
                  orElse: () => returnLanguageSupportModel(
                          AppRouter.rootNavigatorKey.currentContext)
                      .first);
    }
    languageCurrent = language;
    await saveLanguage(languageCurrent);
    emit(const AppMangerState.success());
  }

  Future<void> saveLanguage(LanguageSupportModel lang) async {
    await CacheHelper.storeLanguage(lang.code);
  }

  void storeLanguage() {
    String? oldLanguage = getLanguage();
    if (oldLanguage != null) {
      languageCurrent =
          returnLanguageSupportModel(AppRouter.rootNavigatorKey.currentContext)
              .firstWhere((element) => element.code == oldLanguage);
    }
  }

  String? getLanguage() {
    return CacheHelper.getLanguage();
  }

  void changeLanguage(LanguageSupportModel language) async{
    emit(const AppMangerState.loading());
    languageCurrent=language;
    await saveLanguage(language);
    emit(const AppMangerState.success());

  }
}
