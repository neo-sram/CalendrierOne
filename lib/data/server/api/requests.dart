import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:calendrier/data/server/api/const.dart';

class ApiRequests {
  final dio = Dio();
  BaseOptions options = BaseOptions(
    baseUrl: ApiConsts.url,
    responseType: ResponseType.plain,
  );

  Future getAllCalender() async {
    final x = await dio.get(ApiConsts.url + ApiConsts.getAllDataRequest);
    List<Map<String, dynamic>> parsedJsonAllData = jsonDecode(x.toString());
    return parsedJsonAllData;
  }

  Future getDayByID({required int id}) async {
    final x =
        await dio.get(ApiConsts.url + ApiConsts.getDataById + id.toString());
    Map<String, dynamic> parsedJsonId = jsonDecode(x.toString());
    return parsedJsonId;
  }

  Future getDayByDay({required String dayName}) async {
    final x =
        await dio.get(ApiConsts.url + ApiConsts.getDataByDayName + dayName);
    Map<String, dynamic> parsedJsonDayName = jsonDecode(x.toString());
    return parsedJsonDayName;
  }
}
