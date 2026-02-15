import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smartsearch/Args/data/Model/resultsofsearching.dart';
import 'package:smartsearch/Args/data/Repositry/base_repository.dart';
import 'package:smartsearch/Core/error/network_exceptions.dart';

part 'resultsofsearchingargscubit_state.dart';
part 'resultsofsearchingargscubit_cubit.freezed.dart';
@injectable
class ResultsofsearchingargscubitCubit
    extends Cubit<ResultsofsearchingargscubitState> {
  ResultsofsearchingargscubitCubit(this._resultsofsearchingargsBaseRepository)
      : super(const ResultsofsearchingargscubitState.initial());

  final ResultsofsearchingargsBaseRepository
      _resultsofsearchingargsBaseRepository;

  Future<void> emitResultsofsearchingargs(
      {required String searchtext, required String datasetname}) async {
    emit(const ResultsofsearchingargscubitState.loading());
    final response = await _resultsofsearchingargsBaseRepository
        .resultsofsearchingargs(searchtext, datasetname);
    response.fold((l) => emit(ResultsofsearchingargscubitState.error(l)),
        (r) => emit(ResultsofsearchingargscubitState.success(r)));
  }
}
