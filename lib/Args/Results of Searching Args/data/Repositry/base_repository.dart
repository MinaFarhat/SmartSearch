import 'package:dartz/dartz.dart';
import 'package:ir/Args/Results%20of%20Searching%20Args/data/Model/resultsofsearching.dart';
import 'package:ir/Core/error/network_exceptions.dart';

abstract class ResultsofsearchingargsBaseRepository {
  Future<Either<NetworkExceptions, ResultsofsearchingEntity>>
      resultsofsearchingargs(String searchText);
}
