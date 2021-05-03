import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:starter/utils/values/constants.dart';

class CustomException implements Exception {
  final String message;

  CustomException({@required this.message});
}

class ExceptionHandler {
  static CustomException handleDioError(DioError error) {
    if (error.type == DioErrorType.sendTimeout) {
      return CustomException(message: ErrorMessages.noInternet);
    } else if (error.type == DioErrorType.connectTimeout) {
      return CustomException(message: ErrorMessages.connectionTimeout);
    } else {
      return CustomException(message: ErrorMessages.networkGeneral);
    }
  }

  static CustomException handleError(Exception error) {
    return CustomException(message: ErrorMessages.networkGeneral);
  }
}
