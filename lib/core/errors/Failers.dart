import 'package:dio/dio.dart';

abstract class Failure {final String errorMessage;
  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  
  ServerFailure(super.errorMessage);

factory ServerFailure.fromDioError(DioException dioError) {

  switch (dioError.type) {
    case DioExceptionType.connectionTimeout:
      return ServerFailure('Connection timeout with API server');
    case DioExceptionType.sendTimeout:
      return ServerFailure('Send timeout with API server');
    case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive timeout with API server');
    case DioExceptionType.badResponse:
      return ServerFailure(
          'Received invalid status code: ${dioError.response?.statusCode}');
    case DioExceptionType.cancel:
      return ServerFailure('Request to API server was cancelled');
    case DioExceptionType.unknown:
      if (dioError.message!.contains('SocketException')) {
        return ServerFailure(
            'No Internet connection. Please check your network settings.');
      }
      return ServerFailure('Unexpected error occurred');
    case DioExceptionType.badCertificate:
      // TODO: Handle this case.
      throw UnimplementedError();
    case DioExceptionType.connectionError:
      // TODO: Handle this case.
      throw UnimplementedError();
    case DioExceptionType.transformTimeout:
      // TODO: Handle this case.
      throw UnimplementedError();
      Default:
      return ServerFailure('Unexpected error occurred');  
  }
}
factory ServerFailure.fromResponse(int statusCode ,dynamic response) {
  if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
    return ServerFailure(response['error']['message'] ?? 'Unknown error occurred');
  }
  return ServerFailure('Unknown error occurred'); 
}
}
