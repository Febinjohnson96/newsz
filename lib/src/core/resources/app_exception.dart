class AppException implements Exception {
  final String? message;
  final String prefix;
  AppException(this.message, this.prefix);

  @override
  String toString() {
    return "$prefix${message ?? ''}";
  }
}

class NoNetWorkException extends AppException {
  NoNetWorkException([message])
      : super(message, "Please connect to the internet and try again");
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "Invalid Request");
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([message]) : super(message, "UnAuthorized Request");
}

class FetchDataException extends AppException {
  FetchDataException([message]) : super(message, "Error During Communication");
}
