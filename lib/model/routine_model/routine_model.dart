import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'routine_model.freezed.dart';
part 'routine_model.g.dart';


@freezed
class RoutineModel with _$RoutineModel
{

    factory RoutineModel(String? id, String title, String? description, String frequency, bool checked) = _RoutineModel;

    factory RoutineModel.fromJson(Map<String, dynamic> json) => _$_RoutineModel.fromJson(json);
}