import 'package:injectable/injectable.dart';
import 'package:smartsearch/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:smartsearch/Core/api/api_consumer.dart';

abstract class Resultsofsearchingclinicalwebservice {
  Future<ResultsofsearchingclinicalEntity> reultsofsearchingclinical(
    String searchtext,
    String datasetname,
  );
}

@Singleton(as: Resultsofsearchingclinicalwebservice)
class ResultsofsearchingclinicalwebserviceImpl
    implements Resultsofsearchingclinicalwebservice {
  final ApiConsumer _apiConsumer;

  ResultsofsearchingclinicalwebserviceImpl(this._apiConsumer);

  @override
  Future<ResultsofsearchingclinicalEntity> reultsofsearchingclinical(
      String searchtext, String datasetname) async {
    final response = await _apiConsumer.post("http://10.0.2.2:8000/query",
        body: {"dataset": datasetname, 'query': searchtext});

    return ResultsofsearchingclinicalEntity.fromJson(response);
  }
}
