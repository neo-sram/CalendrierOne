part of 'api_model_single.dart';

Day _$DayFromJson(Map<String, dynamic> json) => Day(
      id: json['id'] as int,
      days: json['Days'] as String,
      section1: json['Section1'] as String,
      section2: json['Section2'] as String,
      section3: json['Section3'] as String,
      section4: json['Section4'] as String,
      section5: json['Section5'] as String,
      section6: json['Section6'] as String,
      section7: json['Section7'] as String,
      section8: json['Section8'] as String,
      section9: json['Section9'] as String,
      section10: json['Section10'] as String,
      section11: json['Section11'] as String,
      section12: json['Section12'] as String,
    );

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'id': instance.id,
      'Days': instance.days,
      'Section1': instance.section1,
      'Section2': instance.section2,
      'Section3': instance.section3,
      'Section4': instance.section4,
      'Section5': instance.section5,
      'Section6': instance.section6,
      'Section7': instance.section7,
      'Section8': instance.section8,
      'Section9': instance.section9,
      'Section10': instance.section10,
      'Section11': instance.section11,
      'Section12': instance.section12,
    };
