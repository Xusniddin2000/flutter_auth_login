




import 'package:dio/dio.dart';

abstract class  NetworkResponseConfig{
     NetworkResponseConfig();
  }


class  NetworkSuccessResponse<T> extends NetworkResponseConfig{
    T  model;
    NetworkSuccessResponse(this.model);
}

class  NetworkErrorResponse extends NetworkResponseConfig{
      String  error=" ";
      NetworkErrorResponse(this.error);
}

class  NetworkExceptionResponse extends NetworkResponseConfig{
       DioError   exception;
       String messageForUser=" " ;

       NetworkExceptionResponse(this.exception){
         if( exception.type==DioErrorType.receiveTimeout||
             exception.type==DioErrorType.sendTimeout ||
             exception.type==DioErrorType.connectionTimeout||
             exception.type==DioErrorType.unknown
           ){
                messageForUser=" Iltimos  Internetni tekshiring";
           }else{
                messageForUser=exception.message.toString();
         }
       }
}
