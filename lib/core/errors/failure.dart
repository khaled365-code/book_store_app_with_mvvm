
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class Failure{

  final String errorMessage;

  Failure({required this.errorMessage});

}

class ServerFailure extends Failure{
  ServerFailure({required super.errorMessage});

  // factory ServerFailure.fromDioError(DioError dioError )
  // {
  //
  //    switch(dioError.type)
  //        {
  //
  //      case DioErrorType.connectionTimeout:
  //       return ServerFailure(errorMessage: 'Connection timeout with ApiServer');
  //
  //      case DioErrorType.sendTimeout:
  //        return ServerFailure(errorMessage: 'SendTimeout timeout with ApiServer');
  //
  //      case DioErrorType.receiveTimeout:
  //        return ServerFailure(errorMessage: 'Receive timeout with ApiServer');
  //
  //      case DioErrorType.badCertificate:
  //        return ServerFailure(errorMessage: 'Bad  Certificate with ApiServer');
  //
  //      case DioErrorType.badResponse:
  //       return ServerFailure.fromResponse(DioError.response!.statusCode!, DioError.response.data!);
  //      case DioErrorType.cancel:
  //       return ServerFailure(errorMessage: 'Api request was cancelled , try again later');
  //      case DioErrorType.unknown:
  //        if(DioError.message.contains('SocketException'))
  //          {
  //            return ServerFailure(errorMessage: 'No internet connection');
  //
  //          }
  //        else
  //          {
  //            return ServerFailure(errorMessage: 'Unexpected error, please try later');
  //
  //          }
  //      default:
  //        return ServerFailure(errorMessage: 'oops there is an error , try again later');
  //    }

  //    }
  //
  // factory ServerFailure.fromResponse(int statusCode,dynamic response)
  // {
  //   if(statusCode==400 || statusCode==401 || statusCode==403)
  //     {
  //       return ServerFailure(errorMessage: response['error']['message']);
  //     }
  //   else if(statusCode==404)
  //     {
  //       return ServerFailure(errorMessage: 'Your request not found,please try again later');
  //
  //     }
  //   else if(statusCode==500)
  //     {
  //       return ServerFailure(errorMessage: 'Internal server error ,please try again later');
  //     }
  //   else
  //     {
  //       return ServerFailure(errorMessage: 'oops there is an error , try again later');
  //
  //     }
  //
  //
  // }


}