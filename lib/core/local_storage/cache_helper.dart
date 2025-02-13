import 'dart:convert';
import '../di/dependency_injection.dart';
import 'cache_keys.dart';
import 'hive.dart';
import 'store_data_model.dart';

class CacheHelper {
// Saves the identity as a string
  static setIdentity({required String value}) async {
    getIt.get<HiveHelper>().updateData(StoreDataModel(
        key:CacheKeys.identityId,
        value: value));
  }

  // Retrieves the saved identity as a string
  static String? getIdentity() {
    return getIt.get<HiveHelper>().readData(CacheKeys.identityId)?.value??"";
  }

  static getTokenType(){
    return getIt.get<HiveHelper>().readData(CacheKeys.tokenType)?.value??"";
  }

  static storeTokenType(tokenType){
    getIt.get<HiveHelper>().updateData(StoreDataModel(
        key:CacheKeys.tokenType,
        value: tokenType));
  }
  static getOrganizationName(){
    return getIt.get<HiveHelper>().readData(CacheKeys.organizationName)?.value??"";
  }

  static setOrganizationName(setOrganizationName){
    getIt.get<HiveHelper>().updateData(StoreDataModel(
        key:CacheKeys.organizationName,
        value: setOrganizationName));
  }
  static getCartContent(){
    return getIt.get<HiveHelper>().readData(CacheKeys.cart)?.value??"";
  }


  static setCartContent(data){
    getIt.get<HiveHelper>().updateData(StoreDataModel(
        key:CacheKeys.cart,
        value: data));
  }
  static removeCartContent() async {
    return getIt.get<HiveHelper>().removeByKeyData(CacheKeys.cart);
  }
  static getToken(){
    return getIt.get<HiveHelper>().readData(CacheKeys.token)?.value??"";
  }

  static storeToken(token){
    getIt.get<HiveHelper>().updateData(StoreDataModel(
        key:CacheKeys.token,
        value: token));
  }
  static storeUserModel(user){
   getIt.get<HiveHelper>().writeData(StoreDataModel(
        key:CacheKeys.user,
        value: user));
  }

  static storeOnBoarding(isOpened){
    getIt.get<HiveHelper>().writeData(StoreDataModel(
        key:CacheKeys.onboarding,
        value: isOpened));
  }
  static getOnBoarding(){
    return getIt.get<HiveHelper>().readData(CacheKeys.onboarding)?.value??false;
  }

  static getUserModel(){


  }

  // Retrieves the saved cookies as a string
  static String? getCookies() {
    final pref = getIt.get<HiveHelper>().readData(CacheKeys.cookies);
    return pref?.value;
  }

  // Saves cookies as a string
  static Future<bool> setCookies({required String value}) async {
    try {
      getIt.get<HiveHelper>().writeData(StoreDataModel(
          key:CacheKeys.cookies,
          value: value));
      return true;
    } catch (e) {
      return false;
    }
  }

  // Retrieves cookies as a map from a JSON string
  static Map<String, String>? getCookiesMap() {
    final jsonString = getIt.get<HiveHelper>().readData(CacheKeys.cookiesMap);
    if (jsonString != null) {
      final cookiesMap = Map<String, String>.from(jsonDecode(jsonString.value));
      return cookiesMap;
    }
    return null;
  }
  // Saves cookies as a map in JSON string format
  static Future<bool> setCookiesMap({required String value}) async {
    try {
      getIt.get<HiveHelper>().writeData(StoreDataModel(
          key:CacheKeys.cookiesMap,
          value: value));
      return true;
    } catch (e) {
      return false;
    }
  }

  // Removes the stored cookies
  static removeCookies() async {
    return getIt.get<HiveHelper>().removeByKeyData(CacheKeys.cookies);
  }

  static storeLanguage(language){
    getIt.get<HiveHelper>().updateData(StoreDataModel(
        key:CacheKeys.language,
        value: language));
  }
  static getLanguage(){
    return getIt.get<HiveHelper>().readData(CacheKeys.language)?.value??"";
  }
  static removeAll()=> getIt.get<HiveHelper>().removeAllData();


}