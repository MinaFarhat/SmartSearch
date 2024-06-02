import 'package:injectable/injectable.dart';
import 'package:ir/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:ir/Core/api/api_consumer.dart';
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
    final response = await _apiConsumer

        ///TODO:check the ip for ur mobile when u run the serve
        .post("http://127.0.0.1:8000/query",
            body: {'query': searchtext, "dataset": datasetname});

    return ResultsofsearchingclinicalEntity.fromJson(response);
  }
}
