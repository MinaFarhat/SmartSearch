import 'package:injectable/injectable.dart';
import 'package:smartsearch/Args/data/Model/resultsofsearching.dart';
import 'package:smartsearch/Core/api/api_consumer.dart';

abstract class Resultsofsearchingargswebservice {
  Future<ResultsofsearchingEntity> resultsofsearchingargs(
    String searchtext,
    String datasetname,
  );
}

@Singleton(as: Resultsofsearchingargswebservice)
class ResultsofsearchingargswebserviceImpl
    implements Resultsofsearchingargswebservice {
  final ApiConsumer _apiConsumer;

  ResultsofsearchingargswebserviceImpl(this._apiConsumer);

  @override
  Future<ResultsofsearchingEntity> resultsofsearchingargs(
      String searchtext, String datasetname) async {
    final response = await _apiConsumer.post("http://10.0.2.2:8000/query",
        body: {'query': searchtext, "dataset": datasetname});
    return ResultsofsearchingEntity.fromJson(response);
  }
}
