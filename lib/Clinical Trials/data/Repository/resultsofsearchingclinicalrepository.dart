import 'package:dartz/dartz.dart';
import 'package:ir/Clinical%20Trials/data/Repository/base_repository_clinical.dart';
import 'package:ir/Clinical%20Trials/data/WebService/resultsofsearchingclinicalwebservice.dart';
import 'package:ir/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:ir/Core/Network/network_info.dart';
import 'package:ir/Core/error/network_exceptions.dart';

class ResultsofsearchingclinicalrepositoryImpl
    implements BaseRepositoryClinical {
  final NetworkInfo _networkInfo;
  final Resultsofsearchingclinicalwebservice
      _resultsofsearchingclinicalwebservice;

  ResultsofsearchingclinicalrepositoryImpl(
      {required NetworkInfo networkInfo,
      required Resultsofsearchingclinicalwebservice
          resultsofsearchingclinicalwebservice})
      : _networkInfo = networkInfo,
        _resultsofsearchingclinicalwebservice =
            resultsofsearchingclinicalwebservice;

  @override
  Future<Either<NetworkExceptions, ResultsofsearchingclinicalEntity>>
      reultsofsearchingclinical(String searchtext) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _resultsofsearchingclinicalwebservice
            .reultsofsearchingclinical(searchtext);

        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
