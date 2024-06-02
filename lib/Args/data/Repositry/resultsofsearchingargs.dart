import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ir/Args/data/Model/resultsofsearching.dart';
import 'package:ir/Args/data/Repositry/base_repository.dart';
import 'package:ir/Args/data/Web%20Service/resultsofsearchingargs.dart';
import 'package:ir/Core/Network/network_info.dart';
import 'package:ir/Core/error/network_exceptions.dart';
@Singleton(as: ResultsofsearchingargsBaseRepository)
class ResultsofsearchingargsRepository
    implements ResultsofsearchingargsBaseRepository {
  final NetworkInfo _networkinfo;
  final Resultsofsearchingargswebservice _resultsofsearchingargswebservice;

  ResultsofsearchingargsRepository(
      {required NetworkInfo networkinfo,
      required Resultsofsearchingargswebservice
          resultsofsearchingargswebservice})
      : _networkinfo = networkinfo,
        _resultsofsearchingargswebservice = resultsofsearchingargswebservice;

  @override
  Future<Either<NetworkExceptions, ResultsofsearchingEntity>>
      resultsofsearchingargs(String searchText,String datasetname) async {
    if (await _networkinfo.isConnected) {
      try {
        final response = await _resultsofsearchingargswebservice
            .resultsofsearchingargs(searchText,datasetname);
        return Right(response);
      } catch (e) {
        return Left(NetworkExceptions.getException(e));
      }
    } else {
      return const Left(NetworkExceptions.noInternetConnection());
    }
  }
}
