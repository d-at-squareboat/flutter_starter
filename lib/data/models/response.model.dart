import 'package:starter/utils/values/enums.dart';

class ResponseModel<T> {
  final ResponseStatus status;
  final String message;
  final T data;

  ResponseModel({this.status, this.message, this.data});
}
