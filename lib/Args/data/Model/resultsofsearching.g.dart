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
      conclusion: json['conclusion'] as String,
      premises: json['premises'] as String,
      contextmena: json['context'] as String,
      sentences: json['sentences'] as String,
    );

Map<String, dynamic> _$ResultsOfSearchingDataToJson(
        ResultsOfSearchingData instance) =>
    <String, dynamic>{
      'conclusion': instance.conclusion,
      'premises': instance.premises,
      'context': instance.contextmena,
      'sentences': instance.sentences,
    };
