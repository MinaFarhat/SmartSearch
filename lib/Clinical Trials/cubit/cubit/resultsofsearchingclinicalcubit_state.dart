part of 'resultsofsearchingclinicalcubit_cubit.dart';

@freezed
class ResultsofsearchingclinicalcubitState with _$ResultsofsearchingclinicalcubitState {
  const factory ResultsofsearchingclinicalcubitState.initial() = _Initial;
   const factory ResultsofsearchingclinicalcubitState.loading() = _Loading;
  const factory ResultsofsearchingclinicalcubitState.success(ResultsofsearchingclinicalEntity resultsofsearchingclinicalentity) = _Success;
  const factory ResultsofsearchingclinicalcubitState.error(NetworkExceptions networkExceptions) =
      _Error;
}
