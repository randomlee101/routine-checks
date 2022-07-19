import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_model.freezed.dart';
part 'routine_model.g.dart';

@Freezed()
class RoutineModel with _$RoutineModel
{
    factory RoutineModel(int id, String title, String? description, String dueTime, bool checked) = _RoutineModel;

    factory RoutineModel.fromJson(Map<String, dynamic> json) => _$_RoutineModel.fromJson(json);
}