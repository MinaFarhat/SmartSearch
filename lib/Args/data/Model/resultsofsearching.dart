// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'resultsofsearching.g.dart';

@JsonSerializable()
class ResultsofsearchingEntity {
  @JsonKey(name: "data")
  final List<ResultsOfSearchingData> results;

  // Constructor
  ResultsofsearchingEntity(this.results);

  factory ResultsofsearchingEntity.fromJson(Map<String, dynamic> json) =>
      _$ResultsofsearchingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsofsearchingEntityToJson(this);
}

@JsonSerializable()
class ResultsOfSearchingData {
  @JsonKey(name: "conclusion")
  final String conclusion;
  @JsonKey(name: "premises")
  final String premises;
  @JsonKey(name: "context")
  final String contextmena;
  @JsonKey(name: "sentences")
  final String sentences;

  ResultsOfSearchingData({
    required this.conclusion,
    required this.premises,
    required this.contextmena,
    required this.sentences,
  });
  // Constructor
  // ResultsOfSearchingData({
  //   required this.title,
  //   required this.condition,
  //   required this.summary,
  //   required this.detailedDescription,
  //   required this.eligibility,
  // });

  factory ResultsOfSearchingData.fromJson(Map<String, dynamic> json) =>
      _$ResultsOfSearchingDataFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsOfSearchingDataToJson(this);
}
