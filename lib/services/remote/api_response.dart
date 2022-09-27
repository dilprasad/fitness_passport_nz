import 'package:FitnessPassport/core/globals/constants.dart';

class ApiResponse<T> {
  EApiStatus? status;
  T? data;
  int? code;
  String? message;

  ApiResponse({this.status, this.data, this.code, this.message});

  ApiResponse.loading() : status = EApiStatus.aLoading;

  ApiResponse.completed(this.data) : status = EApiStatus.aCompleted;

  ApiResponse.error(this.message, this.code) : status = EApiStatus.aError;

  @override
  String toString() {
    return "Status : $status \n Code : $code \n Message : $message \n Data: $data \n";
  }
}
