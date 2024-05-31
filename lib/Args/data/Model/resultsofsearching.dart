// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'resultsofsearching.g.dart';

@JsonSerializable()
class ResultsofsearchingEntity {
  @JsonKey(name: "data")
  List<ResultsOfSearchingData> results;

  // Constructor
  ResultsofsearchingEntity(this.results);

  factory ResultsofsearchingEntity.fromJson(Map<String, dynamic> json) =>
      _$ResultsofsearchingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsofsearchingEntityToJson(this);
}

@JsonSerializable()
class ResultsOfSearchingData {
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "condition")
  final String condition;
  @JsonKey(name: "summary")
  final String summary;
  @JsonKey(name: "detailed_description")
  final String detailedDescription;
  @JsonKey(name: "eligibility")
  final String eligibility;

  // Constructor
  ResultsOfSearchingData({
    required this.title,
    required this.condition,
    required this.summary,
    required this.detailedDescription,
    required this.eligibility,
  });

  factory ResultsOfSearchingData.fromJson(Map<String, dynamic> json) =>
      _$ResultsOfSearchingDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsOfSearchingDataToJson(this);
}
