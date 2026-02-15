import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smartsearch/Clinical%20Trials/data/Repository/base_repository_clinical.dart';
import 'package:smartsearch/Clinical%20Trials/data/model/resultsofsearchingclinical.dart';
import 'package:smartsearch/Core/error/network_exceptions.dart';

part 'resultsofsearchingclinicalcubit_state.dart';
part 'resultsofsearchingclinicalcubit_cubit.freezed.dart';

@injectable
class ResultsofsearchingclinicalcubitCubit
    extends Cubit<ResultsofsearchingclinicalcubitState> {
  ResultsofsearchingclinicalcubitCubit(this._baseRepositoryClinical)
      : super(const ResultsofsearchingclinicalcubitState.initial());

  final BaseRepositoryClinical _baseRepositoryClinical;

  Future<void> emitresultsofsearchingclinical(
      {required String searchtext,required String datasetname}) async {
    emit(const ResultsofsearchingclinicalcubitState.loading());

    final response =
        await _baseRepositoryClinical.reultsofsearchingclinical(searchtext,datasetname);

    response.fold((l) => emit(ResultsofsearchingclinicalcubitState.error(l)),
        (r) => emit(ResultsofsearchingclinicalcubitState.success(r)));
  }
}
