// ignore_for_file: avoid_print, unused_import, empty_catches

import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:calendrier/data/server/api/const.dart';

class ApiRequests {
  static final _dio = Dio(
    BaseOptions(
      baseUrl: ApiConsts.url,
      responseType: ResponseType.plain,
      receiveDataWhenStatusError: true,
      headers: {
        'lang': 'eng',
        'Content-Type': 'application/json',
      },
    ),
  );

  ApiRequests() {
    _dio;
  }

  static Future<Response?> getAllCalender() async {
    try {
      final responseAll =
          await _dio.get(ApiConsts.url + ApiConsts.getAllDataRequest);
      if (responseAll.statusCode == 200) {
        return responseAll;
      }
    } catch (e) {}
    return null;
  }

  static Future<Response?> getDayByID({required int id}) async {
    try {
      final responceId =
          await _dio.get(ApiConsts.url + ApiConsts.getDataById + id.toString());
      if (responceId.statusCode == 200) {
        return responceId;
      }
    } catch (e) {}
    return null;
  }

  static Future<Response?> getDayByDay({required String dayName}) async {
    try {
      final responceDay =
          await _dio.get(ApiConsts.url + ApiConsts.getDataByDayName + dayName);
      if (responceDay.statusCode == 200) {
        return responceDay;
      }
    } catch (e) {}
    return null;
  }
}
