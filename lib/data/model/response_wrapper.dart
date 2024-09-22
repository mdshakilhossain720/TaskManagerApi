
class ResponseWrapper{
  final bool isSuccess;
  final int statuscode;
  final dynamic responseBody;
  final String? errorMessage;

  ResponseWrapper( {required this.isSuccess,required this.statuscode,required this.responseBody,this.errorMessage =""});
}