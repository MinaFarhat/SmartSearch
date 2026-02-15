// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'Args/cubit/cubit/resultsofsearchingargscubit_cubit.dart' as _i17;
import 'Args/data/Repositry/base_repository.dart' as _i15;
import 'Args/data/Repositry/resultsofsearchingargs.dart' as _i16;
import 'Args/data/Web%20Service/resultsofsearchingargs.dart' as _i12;
import 'Clinical%20Trials/cubit/cubit/resultsofsearchingclinicalcubit_cubit.dart'
    as _i18;
import 'Clinical%20Trials/data/Repository/base_repository_clinical.dart'
    as _i13;
import 'Clinical%20Trials/data/Repository/resultsofsearchingclinicalrepository.dart'
    as _i14;
import 'Clinical%20Trials/data/WebService/resultsofsearchingclinicalwebservice.dart'
    as _i11;
import 'Core/api/api_consumer.dart' as _i9;
import 'Core/api/dio_consumer.dart' as _i10;
import 'Core/api/logging_interceptor.dart' as _i3;
import 'Core/error/error_interceptor.dart' as _i4;
import 'Core/Network/network_info.dart' as _i8;
import 'Core/third_party_injection.dart' as _i19;
import 'Core/utils/shared_preference_utils.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyInjection = _$ThirdPartyInjection();
    gh.singleton<_i3.LoggingInterceptor>(() => _i3.LoggingInterceptor());
    gh.singleton<_i4.ErrorInterceptor>(() => _i4.ErrorInterceptor());
    gh.singleton<_i5.Dio>(() => thirdPartyInjection.dio);
    gh.singleton<_i6.InternetConnectionChecker>(
        () => thirdPartyInjection.internetConnectionChecker);
    gh.singleton<_i7.SharedPreferencesUtils>(
        () => thirdPartyInjection.sharedPreferencesUtils);
    gh.lazySingleton<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl(
        connectionChecker: gh<_i6.InternetConnectionChecker>()));
    gh.singleton<_i9.ApiConsumer>(() => _i10.DioConsumer(gh<_i5.Dio>()));
    gh.singleton<_i11.Resultsofsearchingclinicalwebservice>(() =>
        _i11.ResultsofsearchingclinicalwebserviceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i12.Resultsofsearchingargswebservice>(
        () => _i12.ResultsofsearchingargswebserviceImpl(gh<_i9.ApiConsumer>()));
    gh.singleton<_i13.BaseRepositoryClinical>(
        () => _i14.ResultsofsearchingclinicalrepositoryImpl(
              networkInfo: gh<_i8.NetworkInfo>(),
              resultsofsearchingclinicalwebservice:
                  gh<_i11.Resultsofsearchingclinicalwebservice>(),
            ));
    gh.singleton<_i15.ResultsofsearchingargsBaseRepository>(
        () => _i16.ResultsofsearchingargsRepository(
              networkinfo: gh<_i8.NetworkInfo>(),
              resultsofsearchingargswebservice:
                  gh<_i12.Resultsofsearchingargswebservice>(),
            ));
    gh.factory<_i17.ResultsofsearchingargscubitCubit>(() =>
        _i17.ResultsofsearchingargscubitCubit(
            gh<_i15.ResultsofsearchingargsBaseRepository>()));
    gh.factory<_i18.ResultsofsearchingclinicalcubitCubit>(() =>
        _i18.ResultsofsearchingclinicalcubitCubit(
            gh<_i13.BaseRepositoryClinical>()));
    return this;
  }
}

class _$ThirdPartyInjection extends _i19.ThirdPartyInjection {}
