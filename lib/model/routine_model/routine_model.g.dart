// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoutineModel _$$_RoutineModelFromJson(Map<String, dynamic> json) =>
    _$_RoutineModel(
      json['id'] as int,
      json['title'] as String,
      json['description'] as String?,
      json['dueTime'] as String,
      json['checked'] as bool,
    );

Map<String, dynamic> _$$_RoutineModelToJson(_$_RoutineModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'dueTime': instance.dueTime,
      'checked': instance.checked,
    };
