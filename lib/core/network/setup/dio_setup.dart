import 'package:dio/dio.dart';

import 'interceptor.dart';

extension DioSetup on Dio {
  Dio setup() {
    Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };


    // headers['Authorization'] = "$tokenType $token";
    options.headers.addAll(headers);
    options.validateStatus=(statusCode){
      if(statusCode == null){
        return false;
      }
      //if([422,406,403,401,404].contains(statusCode)){ // your http status code
      if([401,403,400,422].contains(statusCode)){ // your http status code
        return true;
      }else{
        return statusCode >= 200 && statusCode < 300;
      }
    };
    return this;
  }
  Dio initialize() => this..interceptors.addAll([ApiInterceptors()]);
}
