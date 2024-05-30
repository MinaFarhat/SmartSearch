import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ir/Clinical%20Trials/data/Repository/base_repository_clinical.dart';
import 'package:ir/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:ir/Core/error/network_exceptions.dart';

part 'resultsofsearchingclinicalcubit_state.dart';
part 'resultsofsearchingclinicalcubit_cubit.freezed.dart';

class ResultsofsearchingclinicalcubitCubit
    extends Cubit<ResultsofsearchingclinicalcubitState> {
  ResultsofsearchingclinicalcubitCubit(this._baseRepositoryClinical)
      : super(const ResultsofsearchingclinicalcubitState.initial());

  final BaseRepositoryClinical _baseRepositoryClinical;

  Future<void> emitresultsofsearchingclinical(
      {required String searchtext}) async {
    emit(const ResultsofsearchingclinicalcubitState.loading());

    final response =
        await _baseRepositoryClinical.reultsofsearchingclinical(searchtext);

    response.fold((l) => emit(ResultsofsearchingclinicalcubitState.error(l)),
        (r) => emit(ResultsofsearchingclinicalcubitState.success(r)));
  }
}
