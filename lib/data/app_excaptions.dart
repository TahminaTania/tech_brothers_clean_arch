class AppExeption implements Exception {
  final _message;
  final _prefix;
  AppExeption([this._message, this._prefix]);
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppExeption {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppExeption {
  BadRequestException([String? message])
      : super(message, 'Error in Requested url');
}

class UnAuthoriseException extends AppExeption {
  UnAuthoriseException([String? message])
      : super(message, 'UnAuthorize exceptions');
}

class InvalidInputException extends AppExeption {
  InvalidInputException([String? message])
      : super(message, 'invalidInput exceptions');
}
