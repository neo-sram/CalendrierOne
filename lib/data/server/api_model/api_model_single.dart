// ignore_for_file: unused_import, depend_on_referenced_packages
import 'package:calendrier/data/server/api/requests.dart';
import 'package:json_serializable/json_serializable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'api_model.g.dart';

@JsonSerializable()
class Day {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "Days")
  final String days;

  @JsonKey(name: "Section1")
  final String section1;

  @JsonKey(name: "Section2")
  final String section2;

  @JsonKey(name: "Section3")
  final String section3;

  @JsonKey(name: "Section4")
  final String section4;

  @JsonKey(name: "Section5")
  final String section5;

  @JsonKey(name: "Section6")
  final String section6;

  @JsonKey(name: "Section7")
  final String section7;

  @JsonKey(name: "Section8")
  final String section8;

  @JsonKey(name: "Section9")
  final String section9;

  @JsonKey(name: "Section10")
  final String section10;

  @JsonKey(name: "Section11")
  final String section11;

  @JsonKey(name: "Section12")
  final String section12;

  const Day({
    required this.id,
    required this.days,
    required this.section1,
    required this.section2,
    required this.section3,
    required this.section4,
    required this.section5,
    required this.section6,
    required this.section7,
    required this.section8,
    required this.section9,
    required this.section10,
    required this.section11,
    required this.section12,
  });

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
  Map<String, dynamic> toJson() => _$DayToJson(this);
}
