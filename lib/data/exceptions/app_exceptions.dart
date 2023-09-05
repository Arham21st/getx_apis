class AppExceptions implements Exception{
  
  final _message;
  final _prefix;
  
  AppExceptions([this._message,this._prefix]);

  @override
  String toString(){
    
    return "$_message$_prefix";
  
  }
}

class InternetException extends AppExceptions{

  InternetException([String? message]) : super(message, "No Internet");

}

class RequestTimeOut extends AppExceptions{

  RequestTimeOut([String? message]) : super(message, "Request time out");
  
}

class SeverException extends AppExceptions{

  SeverException([String? message]) : super(message, "Internet server error");
  
}

class InvalidUrlException extends AppExceptions{

  InvalidUrlException([String? message]) : super(message, "Invalid Url");
  
}

class FatchDataException extends AppExceptions{

  FatchDataException([String? message]) : super(message, "Server communication error");
  
}