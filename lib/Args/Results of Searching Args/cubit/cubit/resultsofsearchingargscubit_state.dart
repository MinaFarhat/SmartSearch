part of 'resultsofsearchingargscubit_cubit.dart';

@freezed
class ResultsofsearchingargscubitState with _$ResultsofsearchingargscubitState {
  const factory ResultsofsearchingargscubitState.initial() = _Initial;
  const factory ResultsofsearchingargscubitState.loading() = _Loading;
  const factory ResultsofsearchingargscubitState.success(ResultsofsearchingEntity resultsofsearchingentity) = _Success;
  const factory ResultsofsearchingargscubitState.error(NetworkExceptions networkExceptions) =
      _Error;
}
