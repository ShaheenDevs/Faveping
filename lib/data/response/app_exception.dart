import 'package:get/get.dart';

class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, "no_internet".tr);
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, "request_time_out".tr);
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, "internal_server_error".tr);
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message])
      : super(message, "invalid_action_performed".tr);
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message]) : super(message, "unable_to_fetch_data".tr);
}