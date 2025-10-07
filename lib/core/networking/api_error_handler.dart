import 'package:dio/dio.dart';
import 'package:week3/core/networking/api_error_factory.dart';
import 'package:week3/core/networking/local_status_codes.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(
            message: "Connection to server failed",
            statusCode: LocalStatusCodes.connectionError,
          );
        case DioExceptionType.cancel:
          return ApiErrorModel(
            message: "Request to the server was cancelled",
            statusCode: LocalStatusCodes.cancel,
          );
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(
            message: "Connection timeout with the server",
            statusCode: LocalStatusCodes.connectionTimeout,
          );
        case DioExceptionType.unknown:
          return ApiErrorModel(
            message:
                "Connection to the server failed due to internet connection",
            statusCode: LocalStatusCodes.unknown,
          );
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
            message: "Receive timeout in connection with the server",
            statusCode: LocalStatusCodes.receiveTimeout,
          );
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
            message: "Send timeout in connection with the server",
            statusCode: LocalStatusCodes.sendTimeout,
          );
        default:
          return ApiErrorModel(
            message: "Something went wrong",
            statusCode: LocalStatusCodes.defaultError,
          );
      }
    } else {
      return ApiErrorFactory.defaultError;
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  if (data is Map<String, dynamic>) {
    return ApiErrorModel(
      message: data['message'] ?? "Unknown error occurred",
      statusCode: data['code'] ?? LocalStatusCodes.defaultError,
    );
  }
  return ApiErrorFactory.defaultError;
}
