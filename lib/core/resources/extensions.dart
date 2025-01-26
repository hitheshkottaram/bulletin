import 'dart:io';
import 'package:dio/dio.dart';

extension HttpResponseExtension on Response {
  bool get isSuccess => statusCode == HttpStatus.ok;
}

extension NullableStringExtension on String? {
  String orEmpty() {
    return this ?? '';
  }
}
