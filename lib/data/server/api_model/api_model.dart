// ignore_for_file: unused_import
import 'package:calendrier/data/server/api/requests.dart';
import 'dart:convert';

void main(List<String> args) async {
  final x = ApiRequests();
  final y = jsonDecode(x.getAllCalender().toString());
  print([y['id']]);
}

// class Day {
//   final int id;
//   final String days;
//   final String section1;
//   final String section2;
//   final String section3;
//   final String section4;
//   final String section5;
//   final String section6;
//   final String section7;
//   final String section8;

//   const Day({
//     required this.id,
//     required this.days,
//     required this.section1,
//     required this.section2,
//     required this.section3,
//     required this.section4,
//     required this.section5,
//     required this.section6,
//     required this.section7,
//     required this.section8,
//   });

//   factory Day.fromJson(List<Map<String , dynamic>> json){

//   }
// }
