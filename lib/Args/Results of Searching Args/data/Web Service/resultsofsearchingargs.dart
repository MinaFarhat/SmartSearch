import 'package:injectable/injectable.dart';
import 'package:ir/Args/Results%20of%20Searching%20Args/data/Model/resultsofsearching.dart';
import 'package:ir/Core/api/api_consumer.dart';

abstract class Resultsofsearchingargswebservice {
  Future<ResultsofsearchingEntity> resultsofsearchingargs(String searchtext);
}

@Singleton(as: Resultsofsearchingargswebservice)
class ResultsofsearchingargswebserviceImpl
    implements Resultsofsearchingargswebservice {
  final ApiConsumer _apiConsumer;

  ResultsofsearchingargswebserviceImpl(this._apiConsumer);

  @override
  Future<ResultsofsearchingEntity> resultsofsearchingargs(
      String searchtext) async {
    final response = await _apiConsumer
        .post("http://127.0.0.1:8000/query", body: {'query': searchtext});
    return ResultsofsearchingEntity.fromJson(response);
  }
}
