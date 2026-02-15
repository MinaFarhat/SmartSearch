import 'package:dartz/dartz.dart';
import 'package:smartsearch/Args/data/Model/resultsofsearching.dart';
import 'package:smartsearch/Core/error/network_exceptions.dart';

abstract class ResultsofsearchingargsBaseRepository {
  Future<Either<NetworkExceptions, ResultsofsearchingEntity>>
      resultsofsearchingargs(String searchText,String datasetname);
}
