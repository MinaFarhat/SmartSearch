import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'resultsofsearchingclinical.g.dart';
@JsonSerializable()
class ResultsofsearchingclinicalEntity {
 @JsonKey(name:"data")

List<ResultsofsearchingclinicalData> resultsClinical;

  // Constructor
  ResultsofsearchingclinicalEntity(this.resultsClinical);

  factory ResultsofsearchingclinicalEntity.fromJson(Map<String, dynamic> json) =>
      _$ResultsofsearchingclinicalEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ResultsofsearchingclinicalEntityToJson(this);

}
@JsonSerializable()
class ResultsofsearchingclinicalData {
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

  ResultsofsearchingclinicalData({required this.title,required this.condition,required this.summary,required this.detailedDescription,required this.eligibility,});

  factory ResultsofsearchingclinicalData.fromJson(Map<String,dynamic> json) =>
      _$ResultsofsearchingclinicalDataFromJson(json);

     Map<String, dynamic> toJson() => _$ResultsofsearchingclinicalDataToJson(this);  
}