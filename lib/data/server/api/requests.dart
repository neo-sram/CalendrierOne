// ignore_for_file: avoid_print, unused_import

import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:calendrier/data/server/api/const.dart';

class ApiRequests {
  final _dio = Dio(
    BaseOptions(
      baseUrl: ApiConsts.url,
      responseType: ResponseType.plain,
    ),
  );

  ApiRequests() {
    _dio;

    interceptorsInit();
  }

  interceptorsInit() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onError: (e, errorHandler) {
          print(e.message);
        },
        onRequest: (request, requestHandler) {
          print('${request.method} ${request.path}');
        },
        onResponse: (responce, responceHandler) {
          print('${responce.data}');
        },
      ),
    );
  }

  Future<Response> getAllCalender() async {
    final responseAll =
        await _dio.get(ApiConsts.url + ApiConsts.getAllDataRequest);
    return responseAll;
  }

  Future<Response> getDayByID({required int id}) async {
    final responceId =
        await _dio.get(ApiConsts.url + ApiConsts.getDataById + id.toString());
    return responceId;
  }

  Future<Response> getDayByDay({required String dayName}) async {
    final responceDay =
        await _dio.get(ApiConsts.url + ApiConsts.getDataByDayName + dayName);
    return responceDay;
  }
}
