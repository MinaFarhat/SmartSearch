import 'package:dartz/dartz.dart';
import 'package:ir/Args/data/Model/resultsofsearching.dart';
import 'package:ir/Core/error/network_exceptions.dart';

abstract class ResultsofsearchingargsBaseRepository {
  Future<Either<NetworkExceptions, ResultsofsearchingEntity>>
      resultsofsearchingargs(String searchText,String datasetname);
}
