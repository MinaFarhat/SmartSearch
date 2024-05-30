// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resultsofsearching.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultsofsearchingEntity _$ResultsofsearchingEntityFromJson(
        Map<String, dynamic> json) =>
    ResultsofsearchingEntity(
      (json['data'] as List<dynamic>)
          .map(
              (e) => ResultsOfSearchingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsofsearchingEntityToJson(
        ResultsofsearchingEntity instance) =>
    <String, dynamic>{
      'data': instance.results,
    };

ResultsOfSearchingData _$ResultsOfSearchingDataFromJson(
        Map<String, dynamic> json) =>
    ResultsOfSearchingData(
      title: json['title'] as String,
      condition: json['condition'] as String,
      summary: json['summary'] as String,
      detailedDescription: json['detailed_description'] as String,
      eligibility: json['eligibility'] as String,
    );

Map<String, dynamic> _$ResultsOfSearchingDataToJson(
        ResultsOfSearchingData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'condition': instance.condition,
      'summary': instance.summary,
      'detailed_description': instance.detailedDescription,
      'eligibility': instance.eligibility,
    };
