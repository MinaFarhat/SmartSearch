// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultsofsearchingclinical.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsofsearchingclinicalEntity _$ResultsofsearchingclinicalEntityFromJson(
        Map<String, dynamic> json) =>
    ResultsofsearchingclinicalEntity(
      (json['data'] as List<dynamic>)
          .map((e) => ResultsofsearchingclinicalData.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsofsearchingclinicalEntityToJson(
        ResultsofsearchingclinicalEntity instance) =>
    <String, dynamic>{
      'data': instance.resultsClinical,
    };

ResultsofsearchingclinicalData _$ResultsofsearchingclinicalDataFromJson(
        Map<String, dynamic> json) =>
    ResultsofsearchingclinicalData(
      title: json['title'] as String,
      condition: json['condition'] as String,
      summary: json['summary'] as String,
      detailedDescription: json['detailed_description'] as String,
      eligibility: json['eligibility'] as String,
    );

Map<String, dynamic> _$ResultsofsearchingclinicalDataToJson(
        ResultsofsearchingclinicalData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'condition': instance.condition,
      'summary': instance.summary,
      'detailed_description': instance.detailedDescription,
      'eligibility': instance.eligibility,
    };
