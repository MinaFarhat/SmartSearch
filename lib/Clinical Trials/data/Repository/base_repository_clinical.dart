import 'package:dartz/dartz.dart';
import 'package:smartsearch/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:smartsearch/Core/error/network_exceptions.dart';

abstract class BaseRepositoryClinical {
  Future<Either<NetworkExceptions, ResultsofsearchingclinicalEntity>>
      reultsofsearchingclinical(String searchtext,String datasetname);
}
