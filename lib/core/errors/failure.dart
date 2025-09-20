import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMassage;

  Failure(this.errorMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMassage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("Request was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("No internet Connection");
        }
        return ServerFailure("Unexpected Error, Please try again");
      // default:
      //   return ServerFailure("Oops there was an error Please try again");
    }
  }

  factory ServerFailure.fromBadResponse(
      int? statusCode, Map<String, dynamic> response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['massage']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, Please try later");
    } else if (statusCode == 500) {
      return ServerFailure("Internal Server error, Please try later");
    } else {
      return ServerFailure("Oops there was an error Please try again");
    }
  }
}
