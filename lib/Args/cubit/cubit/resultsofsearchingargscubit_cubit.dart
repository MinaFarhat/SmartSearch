import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ir/Args/data/Model/resultsofsearching.dart';
import 'package:ir/Args/data/Repositry/base_repository.dart';
import 'package:ir/Core/error/network_exceptions.dart';

part 'resultsofsearchingargscubit_state.dart';
part 'resultsofsearchingargscubit_cubit.freezed.dart';

class ResultsofsearchingargscubitCubit
    extends Cubit<ResultsofsearchingargscubitState> {
  ResultsofsearchingargscubitCubit(this._resultsofsearchingargsBaseRepository)
      : super(const ResultsofsearchingargscubitState.initial());

  final ResultsofsearchingargsBaseRepository _resultsofsearchingargsBaseRepository;

  Future<void> emitResultsofsearchingargs({required String searchtext}) async {
    emit(const ResultsofsearchingargscubitState.loading());
    final response = await _resultsofsearchingargsBaseRepository
        .resultsofsearchingargs(searchtext);
    response.fold((l) => emit(ResultsofsearchingargscubitState.error(l)),
        (r) => emit(ResultsofsearchingargscubitState.success(r)));
  }
}
