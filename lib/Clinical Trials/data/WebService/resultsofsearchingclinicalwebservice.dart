import 'package:ir/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:ir/Core/api/api_consumer.dart';

abstract class Resultsofsearchingclinicalwebservice {
  Future<ResultsofsearchingclinicalEntity> reultsofsearchingclinical(
      String searchtext);
}

class ResultsofsearchingclinicalwebserviceImpl
    implements Resultsofsearchingclinicalwebservice {
  final ApiConsumer _apiConsumer;

  ResultsofsearchingclinicalwebserviceImpl(this._apiConsumer);

  @override
  Future<ResultsofsearchingclinicalEntity> reultsofsearchingclinical(
      String searchtext) async {
    final response = await _apiConsumer
        .post("http://127.0.0.1:8000/query", body: {'query': searchtext});

    return ResultsofsearchingclinicalEntity.fromJson(response);
  }
}
